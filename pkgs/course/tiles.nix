{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/37943/format_tiles_moodle50_2025070364.zip";
    hash = "sha256-VXe3XmQTGN3UJCK6V73rBWfSBk1egy4squKaR6OWpmk=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "format";
}
