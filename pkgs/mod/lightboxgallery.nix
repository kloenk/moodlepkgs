{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
        name = "lightboxgallery";
        url = "https://moodle.org/plugins/download.php/27813/mod_lightboxgallery_moodle40_2022102800.zip";
        sha256 = "sha256-mYbnmL0e7u08ynmO7unW0cDAlyAQRuDzah1k1/PTebY=";
        extraPostFetch = ''
          echo fix permissions: $out
          chmod a-w -R $out
        '';
    };
    pluginType = "mod";
}