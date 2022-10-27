{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
        name = "lightboxgallery";
        url = "https://moodle.org/plugins/download.php/26901/mod_lightboxgallery_moodle40_2022062400.zip";
        sha256 = "sha256-eyFOQzx+uXx/VEDtfM4WjE6D0hmBnqfAZtStr261BMo=";
        extraPostFetch = ''
          echo fix permissions: $out
          chmod a-w -R $out
        '';
    };
    pluginType = "mod";
}