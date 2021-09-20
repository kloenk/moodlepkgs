{
  description = "flake containing Moodle packages";

  outputs = { self, nixpkgs }: let
    systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);

    # Memoize nixpkgs for different platforms for efficiency.
    nixpkgsFor = forAllSystems (system:
      import nixpkgs {
        inherit system;
        overlays = [ self.overlay ];
      });

  in {
    overlay = import ./pkgs/overlay.nix;

    packages = forAllSystems (system: nixpkgsFor.${system}.moodlePackages);

    hydraJobs = {
      packages = self.packages;
    };
  };
}
