# Dependencies

## Config

- **Media control:** `playerctl`
- **Brightness:** `brightnessctl`
- **Launcher:** `rofi`
- **Terminal:** `foot`
- **Portals:** `xdg-desktop-portal-wlr`, `xdg-desktop-portal`
- **Screenshots:** `grim`, `slurp`
- **Status bar:** `waybar`
- **Fonts:** `gomono nerd font`, `liberation mono nerd font`
- **Idle / lock:** `hypridle`, `hyprlock`

> [!NOTE]
> These are for the desktop shell only. If you're setting up the full dotfiles (which include this config), follow the instructions in the main repo instead.

## Swindle

Build-time requirements for compiling swindle itself.

> [!WARNING]
> `wlroots` must be `>=0.20` and compiled with the `libinput` backend, or the build will fail.

- `libinput`
- `wayland`
- `wlroots` (`>=0.20`, compiled with the `libinput` backend)
- `xkbcommon`
- `wayland-protocols` *(compile-time only)*
- `pkg-config` *(compile-time only)*

## Good to have

Not required, but recommended for the full experience:

- `firefox` — browser
- `nautilus` — file manager
- Graphics drivers
- `wlr-randr` — set refresh rates
- `waypaper` — restore & manage wallpapers
- `awww` — wallpaper backend *(formerly `swww`)*
- `wlogout` — logout menu

> [!TIP]
> `awww` replaced `swww`, which is now archived. If a guide or script still references `swww`, swap it for `awww`.
