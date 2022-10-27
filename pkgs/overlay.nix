final: prev:
let inherit (final) callPackage;
in {
  moodlePackages = {
    bigbluebuttonbn = callPackage ./mod/bigbluebuttonbn.nix { };
    scheduler = callPackage ./mod/scheduler.nix { };
    lightboxgallery = callPackage ./mod/lightboxgallery.nix { };

    tiles = callPackage ./course/tiles.nix { };

    sharing_cart = callPackage ./block/sharing_cart.nix { };
  };
}
