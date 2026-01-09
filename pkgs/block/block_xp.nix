{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "block_xp";
  src = fetchzip {
    name = "block_xp";
    url = "https://moodle.org/plugins/download.php/38028/block_xp_moodle51_2025100500.zip";
    hash = "sha256-NqA1r0JFR3EtMUwUx1Qcb7NQEIZfn6oI29xXUNi16Is=";
    postFetch = ''
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
