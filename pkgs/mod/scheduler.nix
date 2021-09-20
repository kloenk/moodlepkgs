{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "scheduler";
  src = fetchzip {
    name = "scheduler";
    url = "https://moodle.org/plugins/download.php/20738/mod_scheduler_moodle311_2019120200.zip";
    sha256 = "sha256-T2og2A3xOvNLHB+9ephgD57rnFWAu4ONDMPIsRheuFg=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "mod";
}
