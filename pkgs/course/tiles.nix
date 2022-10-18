{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/27578/format_tiles_moodle40_2022091700.zip";
    sha256 = "sha256-qJ7k8B7mZjv4404Yy/xop569jA9e75q50yRBElK5Ydg=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
