-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
require("awful.autofocus")
-- Widget and layout library
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- error handling (startup & runtime)
require('main.error')

-- theme
beautiful.init("~/.config/awesome/theme/theme.lua")

-- user variables
awful.uvars = require('main.uvars')

-- right click menu
awful.uvars.mymainmenu = require('main.menu')

-- taglist/wibar
require('main.taglist')

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- mouse bindings
root.buttons(require('binds.globalbuttons'))
clientbuttons = require('binds.clientbuttons') -- global and used by main/rules.lua


-- key bindings
root.keys(require('binds.globalkeys'))
clientkeys = require('binds.clientkeys') -- global and used by main/rules.lua

-- rules
awful.rules.rules = require('main.rules')

-- signals
require('main.signals')

