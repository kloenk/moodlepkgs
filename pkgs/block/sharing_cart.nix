{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/28510/block_sharing_cart_moodle41_2022122000.zip";
    sha256 = "sha256-lGxL5yZfoI/mfDXrX7ui+FQsAAzUCsbERVSzZfP/aXk=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
