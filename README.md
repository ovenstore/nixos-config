# nixos-config

Personal [NixOS](https://nixos.org) flake configuration for my machines. Shared publicly in case it’s useful as a reference or starting point for your own setup — not meant as a reusable framework.

## Screenshots



## Desktop Environment

This setup uses [Noctalia Shell](https://noctalia.dev/) and [Noctalia Greeter](https://docs.noctalia.dev/greeter/) configured with [Niri](https://github.com/niri-wm/niri) and [Hyprland](https://hypr.land/) sessions. 

## Hosts

Multiple machines are defined in `flake.nix` and live under `hosts/`. Each host pulls in shared system modules plus its own hardware config.

Add a host by creating `hosts/<Name>/` (with `default.nix` and `hardware-configuration.nix`) and listing it in the `hosts` array in `flake.nix`.

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
