{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "bigbluebuttonbn";
  src = fetchzip {
    name = "bigbluebuttonbn";
    url = "https://moodle.org/plugins/download.php/24977/mod_bigbluebuttonbn_moodle311_2019101011.zip";
    sha256 = "sha256-fq+X9kVRq8u/9TnapNcv+TGV9f1/5WfXv5ARFQMZBug=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "mod";
}
