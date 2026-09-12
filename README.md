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
> These are just the requirements for stuff to work and look ok ig.

## Swindle

Requirements for compiling swindle and well making it work.

> [!WARNING]
> `wlroots` must be `0.20` and compiled with the `libinput` backend, or the build will fail.

- `libinput`
- `wayland`
- `wlroots0.20` (compiled with the `libinput` backend)
- `xkbcommon`
- `wayland-protocols` *(compile-time only)*
- `pkg-config` *(compile-time only)*

## Good to have

Not required but you will have it if you are a sane person:

- `firefox` — browser
- `nautilus` — file manager
- Graphics drivers
- `wlr-randr` — set refresh rates
- `waypaper` — restore & manage wallpapers
- `awww or swaybg` — wallpaper backend 
- `wlogout` — logout menu

