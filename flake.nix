{
  description = "tux's wm/compositor configurations";

  outputs =
    {
      self,
    }:
    let
      overlay = final: prev: {
        twm = {
          awesome-wm = final.callPackage ./package.nix {
            name = "awesome-wm";
            path = ./src/awesome-wm;
            description = "tux's awesome-wm config";
          };
          hyprland = final.callPackage ./package.nix {
            name = "hyprland";
            path = ./src/hyprland;
            description = "tux's hyprland config";
          };
        };
      };
    in
    {
      overlays.default = overlay;
    };
}
