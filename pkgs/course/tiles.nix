{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/32425/format_tiles_moodle42_2024062501.zip";
    sha256 = "sha256-njdRr4WjemDbmGaroEydhmWpRhNrRohQsm165WdhyOI=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
