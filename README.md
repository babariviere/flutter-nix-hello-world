# Hello World application with Flutter + Nix

This is a demonstration project to show usage of Flutter with Nix.

## Getting Started

If you have `direnv` installed, run:

```sh
direnv allow
```

Otherwise, enter in the `nix-shell`:

```sh
nix-shell
```

After this, you can either build this project with:

```sh
flutter build apk
```

Or run it:

```sh
flutter run
```

If you have any issue, you can run `flutter doctor` to get a diagnostic and potential solution to fix your issues.

## How to use it with your projects

Create a `shell.nix` file with this content:

```nix
{ pkgs ? import <nixpkgs> {} }:

let
  flutter = (import (builtins.fetchTarball
    "https://github.com/babariviere/nixpkgs/archive/flutter-init.tar.gz") {}).flutter; # this will be replaced when merged into NixOS
in pkgs.mkShell {
  buildInputs = [ flutter ];
}
```

After this, enter into your nix-shell and you are good to go.

## Updating

### To update the whole environment, do the following in order:

- `niv init` will update nix/sources.nix if a new one is available
- backup your nix/sources.json: `cp nix/sources.json nix/sources.json.bak`
- `niv update` will update sources.json i.e. your version of nixpkgs used in this environment
  - you may need to edit nix/android.nix if any of the attributes in there can't be found after this.
- `direnv reload` will rebuild/reload your environment (may not be necessary if it automatically reloads)
  - alternatively, run `nix-shell` again (?) 
- `flutter packages update` to update flutter/dart packages and get rid of the warning that you're using a different version of flutter than what was last referenced 

## Global install

If you want to install `flutter` on your system, add this to your `/etc/nixos/configuration.nix`:

```nix
{
  environment.systemPackages = [
    (import (builtins.fetchTarball
        "https://github.com/babariviere/nixpkgs/archive/flutter-init.tar.gz") {}).flutter
  ];
}
```

## Have an issue ?

Create an issue on this repository with your issue and I will try to help you as much as I can !
