{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
        name = "lightboxgallery";
        url = "https://moodle.org/plugins/download.php/30905/mod_lightboxgallery_moodle44_2024012301.zip";
        sha256 = "sha256-R2XzOVbsUL6qQYeM5QBcvG1hjQSqqDR6UgaBsCvmkkY=";
        extraPostFetch = ''
          echo fix permissions: $out
          chmod a-w -R $out
        '';
    };
    pluginType = "mod";
}
