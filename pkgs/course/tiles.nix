{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/28680/format_tiles_moodle41_2023030500.zip";
    sha256 = "sha256-BTn8BIlcHLPToBq7a4pxSBPeIr3Inp+joI6FwmZCBVo=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
