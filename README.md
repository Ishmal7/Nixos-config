First NixOS config

```text
.
├── flake.lock
├── flake.nix
├── hosts
│   └── vivobook
│       ├── configuration.nix
│       ├── default.nix
│       └── hardware-configuration.nix
├── modules
│   ├── core
│   │   ├── boot.nix
│   │   ├── default.nix
│   │   ├── fonts.nix
│   │   ├── locale.nix
│   │   ├── networking.nix
│   │   └── packages.nix
│   ├── desktop
│   │   ├── cosmic.nix
│   │   ├── default.nix
│   │   ├── hypr-de
│   │   │   ├── hyprland.nix
│   │   │   └── noctalia.nix
│   │   └── sddm.nix
│   ├── hardware
│   │   ├── audio.nix
│   │   ├── default.nix
│   │   ├── displaylink.nix
│   │   └── nvidia.nix
│   └── services
│       ├── default.nix
│       └── tailscale.nix
├── README.md
└── users
    └── james
        ├── alacritty
        │   └── default.nix
        ├── color
        │   └── color.nix
        ├── default.nix
        ├── fastfetch
        │   └── default.nix
        ├── git.nix
        ├── home
        ├── neovim
        │   └── default.nix
        └── rofi
            ├── default.nix
            └── themes
                ├── Monokai.rasi
                └── paper-float.rasi
```
