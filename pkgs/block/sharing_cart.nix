{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/32715/block_sharing_cart_moodle44_2024072900.zip";
    hash = "sha256-C9TgVQVwf3kjiGEbug6VUgMD53dUcL4Kfpq3Z6Wz+OY=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
