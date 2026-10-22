{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://marketplace.moodle.com/api/plugins/2200/versions/22976/download";
    extension = "zip";
    hash = "sha256-Ct8QUSWTPmVz7xtRgehJ1LOaN7mkroPbX6B1SV3KfaI=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "format";
}
