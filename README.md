# Hyprland dotfiles
These are my personal configuration files for Hyprland v0.56.2, wriiten in Lua. These provide a very simple starting point for anyone trying to learn to configure on their own. 

## Table of contents
[Requirements](#Requirements)
[Quickstarting](#Quickstarting)
[Configuring](#Configuring)

> Note:
> These dotfiles provide a very basic system that, although is functional, provides a very bare-bones user experience.
> The main intention of this repository is to be as a launch-pad of sorts for those trying to configure their own Hyprland setups.

## Requirements
You will need Arch/NixOS and Hyprland v0.56.2 (or newer).
See installations:
[Arch Linux](wiki.archlinux.org/title/installation_guide)
[NixOS](nixos.wiki/wiki/NixOS_Installation_Guide)
[Hyprland](wiki.hypr.land/Getting-Started/Installation)

## Quickstarting
Clone this repo using
```
git clone https://github.com/123-dot-com/hyprland-dotfiles
```

Copy the `hypr` directory from this repo into `~/.config`
```
cp -r ~/hyprland-dotfiles/hypr ~/.config
```

Hyprland should automatically start using the new config files, however, it is better to reload the session by using
```
hyprctl reload
```

## Configuring
Given that these files are a very bare-bones starting point, configuring is essential to get your system *just* how you want. 

All configuration syntax is given in the [hyprland manuals](wiki.hypr.land/Configuring).

This is the directory tree:

```
└── ~/.config
    └── hypr 
        ├── autostart.lua
        ├── dependencies
        │   ├── apps.lua
        │   ├── curves.lua
        │   └── variables.lua
        ├── hyprland.lua
        ├── inputs.lua
        ├── keybinds.lua
        ├── look_and_feel.lua
        └── monitors.lua
```

### hypr
1. `autostart.lua`- Contains apps that launch on startup.
2. `hyprland.lua`- Default config file, the config file Hyprland launches from.
3. `inputs.lua`- Contains the input options.
4. `keybinds.lua`- Contains the keybinds.
5. `llok_and_feel.lua`- Contains the animations, and general look-and-feel of the session.
6. `monitors.lua`- Contains the monitor(s) config.

### dependencies
1. `apps.lua`- Contains the default apps.
    - `terminal`- Name of terminal emulator.
    - `file_manager`- Name of file manager.
    - `menu`- Name of app launcher.
    - `browser`- Name of browser.
2. `curves.lua`- Contains the [animation curves](wiki.hypr.land/configuring/core/animations/#curves).
3. `variables.lua`- Contains the [environment variables](wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables).

Additional files may be created beyond these (recommended over having the entire config in one file), and would be added to hyprland.lua using Lua's require function.
```
require ("<file dir>")
```
