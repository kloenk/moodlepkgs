{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "shortcodes";
  src = fetchzip {
    name = "shortcodes";
    url = "https://marketplace.moodle.com/api/plugins/2870/versions/21645/download";
    extension = "zip";
    hash = "sha256-xb83EFbaBrLgzDb1c+L2szEwXrbmyu9romjvdTfyJOs=";
    postFetch = ''
      chmod a-w -R $out
    '';
  };
  pluginType = "filter";
}
