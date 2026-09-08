# nixos-config

Personal [NixOS](https://nixos.org) flake configuration for my machines. Shared publicly in case it’s useful as a reference or starting point for your own setup — not meant as a reusable framework.

## Hosts

Multiple machines are defined in `flake.nix` and live under `hosts/`. Each host pulls in shared system modules plus its own hardware config.

| Host | Notes |
|------|--------|
| **Spectre** | Active |
| **ThinkPad** | Defined; currently commented out in the flake |

Add a host by creating `hosts/<Name>/` (with `default.nix` and `hardware-configuration.nix`) and listing it in the `hosts` array in `flake.nix`.

## Tools & inputs

| Tool | Role |
|------|------|
| **[nixpkgs](https://github.com/NixOS/nixpkgs)** (`nixos-unstable`) | Package set and NixOS modules |
| **[hjem](https://github.com/feel-co/hjem)** | Declarative home/dotfile management (Home Manager alternative) |
| **[Noctalia](https://github.com/noctalia-dev/noctalia)** / **[noctalia-greeter](https://github.com/noctalia-dev/noctalia-greeter)** | Desktop shell and greeter |
| **[nh](https://github.com/nix-community/nh)** | NixOS helper for rebuilds and generations |

Desktop environments configured: **Niri** (default session) and **Hyprland**.

## Layout

```
.
├── flake.nix          # Flake entry: inputs, host list, nixosConfigurations
├── hosts/             # Per-machine config (hardware + host-specific modules)
│   ├── Spectre/
│   └── ThinkPad/
├── system/            # Shared NixOS modules (boot, net, desktop, user, …)
├── hjem/              # User environment via hjem
│   ├── desktop/       # Wayland/desktop apps & configs (niri, hyprland, ghostty, …)
│   └── shell/         # CLI tools & configs (bash, helix, yazi, starship, …)
└── wallpapers/        # Wallpaper assets
```

- **`hosts/`** — machine-specific: import `../../system` and local `hardware-configuration.nix`.
- **`system/`** — OS-level settings shared across hosts.
- **`hjem/`** — per-user packages and dotfiles, split into `desktop/` and `shell/`.

Rebuild with `nh` (flake path is set to this repo), or the usual `nixos-rebuild` / `nixos-rebuild switch --flake .#<hostname>`.
