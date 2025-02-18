{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
      name = "lightboxgallery";
      url = "https://moodle.org/plugins/download.php/34252/mod_lightboxgallery_moodle45_2024121600.zip";
      sha256 = "sha256-6JYqmo7DT4McXdHEz8r9nmKgIjthDP0DGkQ2H9nqLTI=";
      postFetch = ''
        echo fix permissions: $out
        chmod a-w -R $out
      '';
    };
    pluginType = "mod";
}
