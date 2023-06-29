{ fetchzip, moodle-utils }:

moodle-utils.buildMoodlePlugin {
  name = "sharing_cart";
  src = fetchzip {
    name = "scharing_cart";
    url = "https://moodle.org/plugins/download.php/28784/block_sharing_cart_moodle41_2023032300.zip";
    sha256 = "sha256-tzOUQbQu1jpl/sSlLXSRIoti9/nLyf0lwUEy88WHuM4";
    extraPostFetch = ''
      echo fix permissions: $out
      chmod a-w -R $out
    '';
  };
  pluginType = "block";
}
