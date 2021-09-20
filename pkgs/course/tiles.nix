{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/25150/format_tiles_moodle311_2020080629.zip";
    sha256 = "sha256-RmUmNS05iphbJzg8QIQ1hsLCa9xgqSbjYk3WPgVlCaM=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
