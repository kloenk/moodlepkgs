{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/39593/format_tiles_moodle51_2026012570.zip";
    hash = "sha256-Ct8QUSWTPmVz7xtRgehJ1LOaN7mkroPbX6B1SV3KfaI=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "format";
}
