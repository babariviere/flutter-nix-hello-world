{ pkgs ? import <nixpkgs> {} }:

let
  flutter = (import (builtins.fetchTarball
    "https://github.com/babariviere/nixpkgs/archive/flutter-init.tar.gz") {}).flutter;
in pkgs.mkShell {
  buildInputs = [ flutter ];

  ANDROID_HOME = "${pkgs.androidsdk_9_0}/libexec/android-sdk";
}
