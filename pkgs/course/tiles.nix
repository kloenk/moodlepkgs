{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/32794/format_tiles_moodle44_2024080940.zip";
    hash = "sha256-PiB5KT7v31+O/qR3T/bYVnnt01e4hitpVar3oW8HRcQ=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
