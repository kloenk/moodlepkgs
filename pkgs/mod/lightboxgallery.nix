{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
        name = "lightboxgallery";
        url = "https://moodle.org/plugins/download.php/29510/mod_lightboxgallery_moodle42_2023062600.zip";
        sha256 = "sha256-nds35pOrDP79xklWOrZgh+3EGPYmXOG5oPa/wQ7gm6o=";
        extraPostFetch = ''
          echo fix permissions: $out
          chmod a-w -R $out
        '';
    };
    pluginType = "mod";
}
