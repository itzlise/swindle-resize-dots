sloppy_focus               = true
bypass_surface_visibility  = false
log_level                  = "error"  -- "silent", "error", "info", "debug"

appearance = {
    inner_border_px    = 2,
    outer_border_px    = 3,
    gaps         = 4,     -- 0 = no gaps. simple as.
    smart_gaps   = false,

    root_color   = 0x222222ff,
    outer_border_color = 0x1a1b26ff,
    inner_border_color = 0x444b6aff,
    inner_focus_color  = 0xad8ee6ff,
    outer_focus_color  = 0x1a1b26ff,
    outer_urgent_color = 0x1a1b26ff,
    inner_urgent_color = 0xf7768eff,

    fullscreen_bg = 0x000000ff,
}


-- Note: the entire input section requires you to restart
-- the compositor once changed
input = {
    repeat_rate             = 35,
    repeat_delay            = 200,
    tap_to_click            = true,
    tap_and_drag            = true,
    drag_lock               = true,
    natural_scrolling       = false,
    disable_while_typing    = true,
    left_handed             = false,
    middle_button_emulation = false,
    scroll_method           = "2fg",        -- "2fg", "edge", "button"
    click_method            = "button_areas", -- "button_areas", "clickfinger"
    accel_profile           = "flat",   -- "adaptive", "flat"
    accel_speed             = 0.0,
}

rules = {
--   { app_id = "Gimp",    floating = true,  monitor = -1 },
--   { app_id = "firefox", tags = 1 << 8,    floating = false, monitor = -1 },
}

monitors = {
    -- catch-all rule; name = nil means match anything
    { name = nil, mfact = 0.55, nmaster = 1, scale = 1.0,
      layout = "dwindle", x = -1, y = -1 },

    -- HiDPI laptop example:
    -- { name = "eDP-1", mfact = 0.5, nmaster = 1, scale = 2.0,
    --   layout = "dwindle", x = -1, y = -1 },
}

-- autostart: it starts stuff in sequence 
autostart = {
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_SESSION_TYPE XDG_CURRENT_DESKTOP",
    "systemctl --user import-environment WAYLAND_DISPLAY XDG_SESSION_TYPE XDG_CURRENT_DESKTOP",
    "waypaper -restore",
    "wlr-randr --output HDMI-A-1 --mode 1920x1080@100 --output DVI-D-1 --mode 1920x1080@60 --right-of HDMI-A-1",
    "waybar -c .config/swindle/waybar/config.jsonc -s .config/swindle/waybar/style.css",
    "hypridle -c .config/swindle/hyprlock/hypridle.conf",
    "systemctl --user start xdg-desktop-portal-wlr",
}


keybinds = {
    { mods = {"logo"},          key = "b",     action = "spawn",  args = {"firefox"} },
    { mods = {"logo"},          key = "e",     action = "spawn",  args = {"nautilus"} },
    { mods = {"logo", "ctrl"},  key = "q",      action = "spawn",  args = {"wlogout", "-b", "5", "-T", "250", "-B", "250"} },
    { mods = {"logo", "ctrl"},  key = "w",      action = "spawn",  args = {"waypaper"} },
    { mods = {"logo"},          key = "return",action = "spawn",  args = {"foot"} },
    { mods = {"logo"},          key = "d",     action = "spawn",  args = {"rofi", "-show", "drun", "-config", "~/.config/rofi/tony/config.rasi"} },
    { mods = {"logo"},          key = "q",     action = "killclient" },
    { mods = {"logo"},          key = "f",     action = "togglefloating" },
    { mods = {"logo", "shift"}, key = "f",     action = "togglefullscreen" },
    { mods = {"logo"},          key = "g",     action = "togglegaps" },
    { mods = {"logo"},          key = "h",     action = "focusdir",  args = {"left"} },
    { mods = {"logo"},          key = "j",     action = "focusdir",  args = {"down"} },
    { mods = {"logo"},          key = "k",     action = "focusdir",  args = {"up"} },
    { mods = {"logo"},          key = "l",     action = "focusdir",  args = {"right"} },
    { mods = {"logo", "ctrl"},  key = "H",     action = "swapdir",   args = {"left"} },
    { mods = {"logo", "ctrl"},  key = "J",     action = "swapdir",   args = {"down"} },
    { mods = {"logo", "ctrl"},  key = "K",     action = "swapdir",   args = {"up"} },
    { mods = {"logo", "ctrl"},  key = "L",     action = "swapdir",   args = {"right"} },
    { mods = {"logo", "shift"}, key = "l",     action = "resizehoriz", args = {"0.05"} },
    { mods = {"logo", "shift"}, key = "h",     action = "resizehoriz", args = {"-0.05"} },
    { mods = {"logo", "shift"}, key = "k",     action = "resizevert",  args = {"-0.05"} },
    { mods = {"logo", "shift"}, key = "j",     action = "resizevert",  args = {"0.05"} },
    { mods = {"logo"},          key = "Tab",   action = "view" },
    { mods = {"logo"},          key = "0",     action = "view",      args = {"all"} },
    { mods = {"logo"},          key = "comma",  action = "focusmon", args = {"left"} },
    { mods = {"logo"},          key = "period", action = "focusmon", args = {"right"} },
    { mods = {"logo", "shift"}, key = "less",    action = "tagmon", args = {"left"} },
    { mods = {"logo", "shift"}, key = "greater", action = "tagmon", args = {"right"} },
    { mods = {"logo", "shift"}, key = "q",     action = "quit" },
    { mods = {"logo"},          key = "s",     action = "spawn",  args = {"/home/lis/.config/swindle/scripts/snip.sh"} },
    { mods = {}, key = "XF86AudioRaiseVolume", action = "spawn", args = {"wpctl", "set-volume", "@DEFAULT_AUDIO_SINK@", "5%+"} },
    { mods = {}, key = "XF86AudioLowerVolume", action = "spawn", args = {"wpctl", "set-volume", "@DEFAULT_AUDIO_SINK@", "5%-"} },
    { mods = {}, key = "XF86AudioMute",        action = "spawn", args = {"wpctl", "set-mute", "@DEFAULT_AUDIO_SINK@", "toggle"} },
    { mods = {}, key = "XF86AudioMicMute",     action = "spawn", args = {"wpctl", "set-mute", "@DEFAULT_AUDIO_SOURCE@", "toggle"} },
    { mods = {}, key = "XF86AudioPlay",        action = "spawn", args = {"playerctl", "play-pause"} },
    { mods = {}, key = "XF86AudioNext",        action = "spawn", args = {"playerctl", "next"} },
    { mods = {}, key = "XF86AudioPrev",        action = "spawn", args = {"playerctl", "previous"} },
    { mods = {}, key = "XF86AudioStop",        action = "spawn", args = {"playerctl", "stop"} },
    { mods = {}, key = "XF86MonBrightnessUp",   action = "spawn", args = {"brightnessctl", "set", "5%+"} },
    { mods = {}, key = "XF86MonBrightnessDown", action = "spawn", args = {"brightnessctl", "set", "5%-"} },
    
}

for i = 1, 9 do
    local key  = tostring(i)
    local mask = 1 << (i - 1)
    table.insert(keybinds, { mods = {"logo"},                    key = key, action = "view",      args = {tostring(mask)} })
    table.insert(keybinds, { mods = {"logo", "ctrl"},            key = key, action = "toggleview", args = {tostring(mask)} })
    table.insert(keybinds, { mods = {"logo", "shift"},           key = key, action = "tag",        args = {tostring(mask)} })
    table.insert(keybinds, { mods = {"logo", "ctrl", "shift"},   key = key, action = "toggletag",  args = {tostring(mask)} })
end

buttons = {
    { mods = {"logo"}, button = "left",   action = "moveresize",     args = {"move"} },
    { mods = {"logo"}, button = "middle", action = "togglefloating" },
    { mods = {"logo"}, button = "right",  action = "moveresize",     args = {"resize"} },
}
