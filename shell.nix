{ sources ? import ./nix/sources.nix }:

let
  pkgs = import sources.nixpkgs {};
  android = pkgs.callPackage ./nix/android.nix { };
in pkgs.mkShell {
  buildInputs = [ pkgs.flutter pkgs.jdk android.platform-tools ];

  ANDROID_HOME = "${android.androidsdk}/libexec/android-sdk";
  JAVA_HOME = pkgs.jdk;
  ANDROID_AVD_HOME = (toString ./.) + "/.android/avd";
}
