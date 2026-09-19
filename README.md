First NixOS config

```text
.
├── flake.lock
├── flake.nix
├── home
│   ├── default.nix
│   ├── hypr-de
│   │   ├── default.nix
│   │   └── hyprland.lua
│   ├── noctalia
│   │   ├── bar.toml
│   │   ├── default.nix
│   │   └── dock.toml
│   └── programs
│       ├── alacritty.nix
│       ├── color.nix
│       ├── default.nix
│       ├── fastfetch.nix
│       ├── git.nix
│       └── neovim.nix
├── hosts
│   └── vivobook
│       ├── default.nix
│       └── hardware-configuration.nix
├── lib
├── modules
│   ├── core
│   │   ├── boot.nix
│   │   ├── default.nix
│   │   ├── fonts.nix
│   │   ├── locale.nix
│   │   ├── mount.nix
│   │   ├── networking.nix
│   │   ├── nix.nix
│   │   ├── packages.nix
│   │   └── secrets.nix
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
├── secrets
│   └── Nas.yaml
└── users
    └── james
        ├── default.nix
        └── home.nix
```
