{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "shortcodes";
  src = fetchzip {
    name = "shortcodes";
    url = "https://moodle.org/plugins/download.php/38025/filter_shortcodes_moodle51_2025100100.zip";
    hash = "sha256-xb83EFbaBrLgzDb1c+L2szEwXrbmyu9romjvdTfyJOs=";
    postFetch = ''
      chmod a-w -R $out
    '';
  };
  pluginType = "filter";
}
