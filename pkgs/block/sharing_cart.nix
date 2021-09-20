{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/24548/block_sharing_cart_moodle311_2021062600.zip";
    sha256 = "sha256-o8+1Oenbh99YrdDMprUMXh5P8bETPdco3RHbhxMxdug=";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
