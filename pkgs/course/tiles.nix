{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "tiles";
  src = fetchzip {
    name = "tiles";
    url = "https://moodle.org/plugins/download.php/32549/format_tiles_moodle44_2024071107.zip";
    sha256 = "sha256-S3IBc+jQwxRVuvATIDhAO1hQuOlOIDeyMbh7ZMhezL8=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "course";
}
