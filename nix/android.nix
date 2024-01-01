{ androidenv }:

androidenv.composeAndroidPackages {
  toolsVersion = "26.1.1";
  platformToolsVersion = "34.0.5";
  buildToolsVersions = [ "30.0.3" ];
  includeEmulator = false;
  emulatorVersion = "34.1.9";
  platformVersions = [ "28" "29" "30" "31" "32" "33" "34" ];
  includeSources = false;
  includeSystemImages = false;
  systemImageTypes = [ "google_apis_playstore" ];
  abiVersions = [ "armeabi-v7a" "arm64-v8a" ];
  cmakeVersions = [ "3.10.2" ];
  includeNDK = true;
  ndkVersions = [ "22.0.7026061" ];
  useGoogleAPIs = false;
  useGoogleTVAddOns = false;
}
