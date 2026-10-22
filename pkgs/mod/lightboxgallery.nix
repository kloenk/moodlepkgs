{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
    name = "lightboxgallery";
    src = fetchzip {
      name = "lightboxgallery";
      url = "https://marketplace.moodle.com/api/plugins/220/versions/23917/download";
      extension = "zip";
      hash = "sha256-NFq4C8F7tULeANagpCNRkmcgwe6+wh+XsCBd3mqVESs=";
      postFetch = ''
        echo fix permissions: $out
        chmod a-w -R $out
      '';
    };
    pluginType = "mod";
}
