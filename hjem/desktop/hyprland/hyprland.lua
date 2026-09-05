-- Hyprland Lua config (0.55+)
-- https://wiki.hypr.land/Configuring/Start/

local mainMod  = "SUPER"
local terminal = "ghostty"
local browser  = "brave"


------------------
---- MONITORS ----
------------------

-- Match Spectre laptop panel used in niri (1920x1280 @ 1.1)
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1280",
    position = "auto",
    scale    = 1.0,
})


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("NIXOS_OZONE_WL", "1")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("XDG_SCREENSHOTS_DIR", os.getenv("HOME") .. "/Pictures/Screenshots")


-------------------
---- AUTOSTART ----
-------------------

-- Noctalia starts via systemd once UWSM reaches graphical-session.target.
hl.on("hyprland.start", function()
    hl.exec_cmd("sleep 2 && keepassxc")
end)


-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Structure only — border colors come from noctalia.lua
hl.config({
    general = {
        gaps_in          = 6,
        gaps_out         = 12,
        border_size      = 3,
        layout           = "dwindle",
        resize_on_border = true,
        allow_tearing    = false,
    },

    decoration = {
        rounding = 8,
        blur     = { enabled = false },
        shadow   = { enabled = false },
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "slave",
        new_on_top = true,
        mfact      = 0.5,
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
        disable_splash_rendering = true,
        focus_on_activate       = true,
    },

    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

    input = {
        kb_layout          = "us",
        numlock_by_default = true,
        follow_mouse       = 1,
        mouse_refocus      = false,
        touchpad = {
            natural_scroll = true,
            tap_to_click   = true,
        },
    },
})

hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "default" })
hl.animation({ leaf = "windows",    enabled = true, speed = 2, bezier = "default" })

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})


----------------------
---- WINDOW RULES ----
----------------------

hl.window_rule({
    name  = "keepassxc",
    match = { class = "org.keepassxc.KeePassXC" },
    float = true,
    size  = "60% 70%",
    no_screen_share = true,
})


---------------------
---- KEYBINDINGS ----
---------------------

-- Launch applications
hl.bind(mainMod .. " + Return",        hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + B",     hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + SHIFT + P",     hl.dsp.exec_cmd("keepassxc"))

-- Core Noctalia binds
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind(mainMod .. " + SHIFT + N",      hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))
hl.bind(mainMod .. " + SHIFT + Q",      hl.dsp.exec_cmd("noctalia msg panel-toggle session"))
hl.bind(mainMod .. " + SHIFT + comma",  hl.dsp.exec_cmd("noctalia msg settings-toggle"))

-- Close / quit
hl.bind(mainMod .. " + Q",         hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())
hl.bind("CTRL + ALT + Delete",     hl.dsp.exit())

-- Fullscreen / float / center / split
hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen(1))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen(0))
hl.bind(mainMod .. " + M",         hl.dsp.window.fullscreen(0))
hl.bind(mainMod .. " + T",         hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + C",         hl.dsp.window.center())
hl.bind(mainMod .. " + R",         hl.dsp.layout("togglesplit"))

-- Focus
local focusDirs = {
    { "left",  "left"  },
    { "down",  "down"  },
    { "up",    "up"    },
    { "right", "right" },
    { "H",     "left"  },
    { "J",     "down"  },
    { "K",     "up"    },
    { "L",     "right" },
}

for _, d in ipairs(focusDirs) do
    local key, dir = d[1], d[2]
    hl.bind(mainMod .. " + " .. key,               hl.dsp.focus({ direction = dir }))
    hl.bind(mainMod .. " + SHIFT + " .. key,       hl.dsp.window.swap({ direction = dir }))
    hl.bind(mainMod .. " + CTRL + " .. key,        hl.dsp.focus({ monitor = dir }))
    hl.bind(mainMod .. " + CTRL + SHIFT + " .. key, hl.dsp.window.move({ monitor = dir }))
end

-- Resize (niri Mod+/- / Shift+/-); Mod+CTRL is used for monitors above
hl.bind(mainMod .. " + minus",         hl.dsp.window.resize({ x = -60, y = 0 }))
hl.bind(mainMod .. " + equal",         hl.dsp.window.resize({ x =  60, y = 0 }))
hl.bind(mainMod .. " + SHIFT + minus", hl.dsp.window.resize({ x = 0, y = -60 }))
hl.bind(mainMod .. " + SHIFT + equal", hl.dsp.window.resize({ x = 0, y =  60 }))

-- Workspaces (niri Mod+U/I and numbered)
hl.bind(mainMod .. " + U",              hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + I",              hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + SHIFT + U",      hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mainMod .. " + SHIFT + I",      hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mainMod .. " + SHIFT + Page_Down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mainMod .. " + SHIFT + Page_Up",   hl.dsp.window.move({ workspace = "e-1" }))

for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i,           hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i,   hl.dsp.window.move({ workspace = i, silent = true }))
end

-- Screenshots via Noctalia
hl.bind("Print",                     hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen"))
hl.bind(mainMod .. " + SHIFT + S",   hl.dsp.exec_cmd("noctalia msg screenshot-region"))

-- Move/resize with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume & brightness (Noctalia)
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("noctalia msg volume-up"),       { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("noctalia msg volume-down"),     { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("noctalia msg volume-mute"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("noctalia msg mic-mute"),        { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("noctalia msg brightness-up"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("noctalia msg brightness-down"), { locked = true, repeating = true })

-- Media keys
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioStop",  hl.dsp.exec_cmd("playerctl stop"),       { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })


--------------------------------
---- NOCTALIA THEME COLORS -----
--------------------------------

-- Generated at runtime by Noctalia into ~/.config/hypr/noctalia.lua
local ok, noctalia = pcall(require, "noctalia")
if ok and noctalia.apply_theme then
    noctalia.apply_theme()
end
