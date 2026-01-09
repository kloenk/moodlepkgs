{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
      name = "lightboxgallery";
      url = "https://moodle.org/plugins/download.php/36342/mod_lightboxgallery_moodle51_2025052600.zip";
      hash = "sha256-+2ayCrG1sZ/59ssa05ZDlQ2fklCIxRVJot0NgRA4W7s=";
      postFetch = ''
        echo fix permissions: $out
        chmod a-w -R $out
      '';
    };
    pluginType = "mod";
}
