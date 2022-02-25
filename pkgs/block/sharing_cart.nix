{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/25190/block_sharing_cart_moodle311_2021092900.zip";
    sha256 = "sha256-5OmCIW1yO5CXz9BgR1Rq9mEhIheFMxOxxlOtOYWPQSU=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
