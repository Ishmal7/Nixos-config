First NixOS config

```text
.
├── flake.lock
├── flake.nix
├── hosts
│   └── vivobook
│       ├── default.nix
│       ├── hardware-configuration.nix
│       └── packages.nix
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
│   ├── home
│   │   ├── alacritty
│   │   │   └── default.nix
│   │   ├── color
│   │   │   └── color.nix
│   │   ├── default.nix
│   │   ├── fastfetch
│   │   │   └── default.nix
│   │   ├── git.nix
│   │   ├── hypr-de
│   │   │   ├── hyprland.lua
│   │   │   └── noctalia
│   │   │       ├── bar.toml
│   │   │       └── dock.toml
│   │   ├── neovim
│   │   │   └── default.nix
│   │   └── rofi
│   │       ├── default.nix
│   │       └── themes
│   │           ├── Monokai.rasi
│   │           └── paper-float.rasi
│   └── services
│       ├── default.nix
│       └── tailscale.nix
├── README.md
└── users
    └── james
        ├── default.nix
        └── home.nix
```
