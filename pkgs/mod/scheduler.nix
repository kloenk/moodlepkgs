{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "scheduler";
  src = fetchzip {
    name = "scheduler";
    url = "https://moodle.org/plugins/download.php/29293/mod_scheduler_moodle42_2023052300.zip";
    sha256 = "sha256-6ztUR5LxhtJISwU4/Z0Vcbx2rirBmIPAmYVmkU9aqTo=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "mod";
}
