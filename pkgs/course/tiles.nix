{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/34233/format_tiles_moodle44_2024121240.zip";
    hash = "sha256-mDiLLVeUU3KNaCnEfnH2eN7kHT83IuvklmiV6WzwIVc=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
