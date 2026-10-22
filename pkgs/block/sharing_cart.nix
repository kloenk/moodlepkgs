{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://marketplace.moodle.com/api/plugins/845/versions/21593/download";
    extension = "zip";
    hash = "sha256-rNc9H59Z1jtROj0u+cx795bhp5xmRFnFDtg8eql87eE=";
    postFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
