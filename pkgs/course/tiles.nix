{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/32139/format_tiles_moodle44_2024051800.zip";
    sha256 = "sha256-fm2ZFcywt5vIC+iyCvocPWA7IljjzylAWaN9zniBpxY=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
