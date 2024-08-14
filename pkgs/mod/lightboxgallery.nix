{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
      name = "lightboxgallery";
      url = "https://moodle.org/plugins/download.php/32783/mod_lightboxgallery_moodle44_2024080800.zip";
      sha256 = "sha256-Dec1Tx1H237P9ovsSKXnd+LW+KxAWfhbClIZm2xEZxk=";
      extraPostFetch = ''
        echo fix permissions: $out
        chmod a-w -R $out
      '';
    };
    pluginType = "mod";
}
