{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/28650/format_tiles_moodle41_2023022800.zip";
    sha256 = "sha256-e+DuRxckigBfg6SyWHTPxt7bm0ZkQDHGK6CYXZXlxa8=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
