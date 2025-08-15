# Baby's First NixOS Configuration

This repository contains my personal NixOS configuration, built with **Home Manager** and **flakes** to support a multi-host setup. While these configurations are tailored to my own systems and preferences, the individual application configurations may be useful inspiration for your own system. I wouldn’t recommend using the entire configuration as-is without understanding how it works.

## ⚙️ Application Configurations
Here is a list of the primary applications and tools that are used in this config:

### Desktop Applications
- **Window Manager** - Hyprland
- **Lockscreen** - Hyprlock
- **Status Bar** - Waybar
- **Application Launcher/Power Menu** - Fuzzel
- **Notification Daemon** - Dunst
- **Terminal Emulator** - Kitty, Ghostty
- **Wallpaper Engine** - SWWW

### General Applications
- **Code Editors** - VSCode (VSCodium), Helix, Vim
- **Browsers** - Firefox (includes custom theme through CSS)
- **File Managers** - Yazi
- **PDF Viewer** - Zathura

### Other Useful Things
- For my shell I use Bash with Atuin, EZA, Zoxide, and Starship among other tools. See `home-manager/modules/shell/` for other shell related apps.
- I have a few key remappings done using Keyd in my `system/` directory.
- This config uses **Nix Helper (NH)** with shell aliases for cleaner rebuild commands and automated garbage collection. This configuration is also found in the `system/` directory. 

## 📂 Configuration Structure

### `home-manager/`
Contains all **Home Manager** configurations for the user-level settings.  
- `modules/` — This directory contains the user-level configurations for all of my applications. It is divided up into `modules/desktop/`, `modules/apps/`, and `modules/shell`
  - `.../desktop/` - Contains the configurations for the apps that make up my desktop such as the window managers and application launchers. 
  - `.../apps/` - Contains the configurations for my general apps such as browsers, code editors, etc. 
  - `.../shell/` - Contains the shell app configurations such as EZA, Zoxide, Starship, etc. 
- `home.nix` — The basic `home.nix` file associated with **Home Manager**. Fonts are installed in this file. 

### `hosts/`
This directory contains the per-machine configurations. In the future, this directory may contain additional files for further host-specific configurations, such as declarative disk formatting. 

Each host directory contains:
- `default.nix` — Imports the host-specific `hardware-configuration.nix`, as well as the `system/` directory. 
- `hardware-configuration.nix` — Generated hardware settings for each machine.

This makes it easy to manage multiple devices (e.g., laptop and desktop) in the same repository.

### `system/`
This directory contains all of the system-wide NixOS configurations, these are the things that would typically be found in a `configuration.nix` file. This directory is imported by the individual hosts inside of `hosts/`. 

### `themes/`
These are reusable theme definitions that can be applied across system and Home Manager modules. I am using a custom theme structure instead of **Stylix**, which is a more popular option that I would recommend if you don't have a lot of time on your hands. 

My custom theme format is used so that I can configure different themes that cover colors, fonts, window spacing, animations, GTK themes, etc. It is inspired heavily by the more advanced rice setup used by [this](https://git.nx2.site/nx2/dotfiles) configuration. 

### `wallpapers/`
Self explanatory. In the future this directory may be moved into `themes/`. 

## 📋 To-Do
- Add Niri as a window manager option
- Switch away from SDDM to Greetd or similar
- Configure a Bluetooth module in `system/`
- Set up **SOPS-NIX** for secrets management, most likely SSH and user creation
- Set up a form of syncing for Obsidian (note taking app)
- Set up KeepassXC with syncing
- Do some security hardening, I am unsure what this will look like yet
- Implement host-specific **Disko** configurations for declarative disk formatting

## 🙏 Acknowledgements
*Will do this soon*
