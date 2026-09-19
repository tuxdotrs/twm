<h3 align="center">
  tux's wm/compositor config's
</h3>
<p align="center">
 <a href="https://wakatime.com/badge/user/012e8da9-99fe-4600-891b-bd9d8dce73d9/project/05c45792-1efd-43b3-a8c5-73968fbd9338"><img src="https://wakatime.com/badge/user/012e8da9-99fe-4600-891b-bd9d8dce73d9/project/05c45792-1efd-43b3-a8c5-73968fbd9338.svg" alt="wakatime"></a>
  <a href="https://builtwithnix.org" target="_blank"><img alt="home" src="https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a"></a>
  <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/tuxdotrs/tawm">
  <img alt="GitHub commit activity" src="https://img.shields.io/github/commit-activity/m/tuxdotrs/tawm">
</p>
<p align="center">
	<img src="https://github.com/user-attachments/assets/fc28c35f-b87a-4931-ae7f-c231a11fd1a3" alt="desktop">
</p>

## Installation

```nix
# Add to your flake inputs
tawm = {
  url = "github:tuxdotrs/twm";
  inputs.nixpkgs.follows = "nixpkgs";
};

# Add this to your nixpkgs overlays
overlays = [
  inputs.twm.overlays.default
];

# Add this in your HomeManager config
{
  home.file = {
    ".config/awesome" = {
      recursive = true;
      source = "${pkgs.twm.awesome-wm}";
    };
  };

  home.file = {
    ".config/hypr" = {
      recursive = true;
      source = "${pkgs.twm.hyprland}";
    };
  };
}
```

## Showcase

![2024-08-08_18-33](https://github.com/user-attachments/assets/1cdcc387-0f68-486c-a76c-a36ad2acb78d)

![2024-08-08_18-18](https://github.com/user-attachments/assets/f3fc4da5-6c0d-4cda-934d-b68ca6494e02)
