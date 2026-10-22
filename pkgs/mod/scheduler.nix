{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "scheduler";
  src = fetchzip {
    name = "scheduler";
    url = "https://marketplace.moodle.com/api/plugins/471/versions/14690/download";
    extension = "zip";
    sha256 = "sha256-6ztUR5LxhtJISwU4/Z0Vcbx2rirBmIPAmYVmkU9aqTo=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "mod";
}
