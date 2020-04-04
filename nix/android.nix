{ androidenv }:

androidenv.composeAndroidPackages {
  toolsVersion = "25.2.5";
  platformToolsVersion = "28.0.1";
  buildToolsVersions = [ "28.0.3" ];
  includeEmulator = true;
  emulatorVersion = "28.0.14";
  platformVersions = [ "28" ];
  includeSources = false;
  includeDocs = false;
  includeSystemImages = true;
  systemImageTypes = [ "default" ];
  abiVersions = [ "x86_64" ];
  # lldbVersions = [ "2.0.2558144" ];
  # cmakeVersions = [ "3.6.4111459" ];
  includeNDK = false;
  # ndkVersion = "16.1.4479499";
  useGoogleAPIs = false;
  useGoogleTVAddOns = false;
  # includeExtras = [ "extras;google;gcm" ];
}
