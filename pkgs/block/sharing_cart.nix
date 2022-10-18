{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/27731/block_sharing_cart_moodle40_2022101400.zip";
    sha256 = "sha256-plbzj0hVXUgSRib1f6ElBhQPr3+zCbKf8Wj64phO/xg=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
