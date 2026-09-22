First NixOS config

```text
.
├── flake.lock
├── flake.nix
├── home
│   ├── hypr-de
│   │   ├── default.nix
│   │   └── hyprland.lua
│   ├── noctalia
│   │   └── default.nix
│   └── programs
│       ├── alacritty.nix
│       ├── color.nix
│       ├── default.nix
│       ├── fastfetch.nix
│       ├── git.nix
│       ├── neovim.nix
│       └── ssh.nix
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
│   │   ├── plymouth.nix
│   │   └── sddm.nix
│   ├── hardware
│   │   ├── audio.nix
│   │   ├── default.nix
│   │   ├── displaylink.nix
│   │   └── nvidia.nix
│   └── services
│       ├── cups.nix
│       ├── default.nix
│       ├── ssh.nix
│       ├── tailscale.nix
│       └── upower.nix
├── README.md
├── secrets
│   ├── github.yaml
│   └── Nas.yaml
└── users
    └── james
        ├── default.nix
        └── home.nix
```
