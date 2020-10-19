{ androidenv }:

androidenv.composeAndroidPackages {
  toolsVersion = "25.2.5";
  platformToolsVersion = "29.0.6";
  buildToolsVersions = [ "28.0.3" ];
  includeEmulator = true;
  emulatorVersion = "30.0.3";
  platformVersions = [ "28" ];
  includeSources = false;
  includeDocs = false;
  includeSystemImages = true;
  systemImageTypes = [ "default" ];
  abiVersions = [ "x86_64" ];
  includeNDK = false;
  useGoogleAPIs = false;
  useGoogleTVAddOns = false;
}
