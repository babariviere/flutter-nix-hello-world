{ sources ? import ./nix/sources.nix }:

let
  pkgs = import sources.nixpkgs { config.android_sdk.accept_license = true;};
  android = pkgs.callPackage ./nix/android.nix { };
in pkgs.mkShell {
  buildInputs = with pkgs; [
    # from pkgs
    flutter
    jdk
    niv
    #from ./nix/*
    android.platform-tools ];

  ANDROID_HOME = "${android.androidsdk}/libexec/android-sdk";
  JAVA_HOME = pkgs.jdk;
  ANDROID_AVD_HOME = (toString ./.) + "/.android/avd";
}
