{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/28650/format_tiles_moodle41_2023022800.zip";
    sha256 = "sha256-EEdPozz1cXbxPqOjjBeRfvZE+hyO/GEH+gfDhwAJWhg=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
