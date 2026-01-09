{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/37969/block_sharing_cart_moodle50_2025092900.zip";
    hash = "sha256-rNc9H59Z1jtROj0u+cx795bhp5xmRFnFDtg8eql87eE=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
