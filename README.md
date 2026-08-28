First NixOS config

```text
.
├── configuration.nix
├── environment
│   ├── cosmic-de
│   │   └── cosmic.nix
│   ├── greetd.nix
│   ├── hypr-de
│   │   ├── hyprland.nix
│   │   └── noctalia.nix
│   └── sddm.nix
├── flake.lock
├── flake.nix
├── home
│   ├── alacritty
│   │   └── default.nix
│   ├── color
│   │   └── color.nix
│   ├── cosmic-home.nix
│   ├── fastfetch
│   │   └── default.nix
│   ├── git.nix
│   ├── home.nix
│   ├── neovim
│   │   └── default.nix
│   ├── rofi
│   │   ├── default.nix
│   │   └── themes
│   │       ├── Monokai.rasi
│   │       └── paper-float.rasi
│   └── users-home
│       └── james-home.nix
├── hosts
│   └── vivobook
│       ├── default.nix
│       └── hardware-configuration.nix
├── modules
│   ├── core
│   │   ├── boot.nix
│   │   ├── default.nix
│   │   ├── fonts.nix
│   │   ├── locale.nix
│   │   └── networking.nix
│   ├── desktop
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
    └── james.nix
```
