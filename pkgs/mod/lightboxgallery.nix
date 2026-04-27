{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
      name = "lightboxgallery";
      url = "https://moodle.org/plugins/download.php/40685/mod_lightboxgallery_moodle51_2026032500.zip";
      hash = "sha256-NFq4C8F7tULeANagpCNRkmcgwe6+wh+XsCBd3mqVESs=";
      postFetch = ''
        echo fix permissions: $out
        chmod a-w -R $out
      '';
    };
    pluginType = "mod";
}
