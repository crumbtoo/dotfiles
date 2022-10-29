local awful = require('awful')
local gears = require('gears')
local beautiful = require("beautiful")

myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", awful.uvars.terminal .. " -e man awesome" },
   { "edit config", awful.uvars.terminal .. " -e nvim " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

mymainmenu = awful.menu({
	items = {
		{ "awesome", myawesomemenu, beautiful.awesome_icon },
		{ "open terminal", awful.uvars.terminal }
	}
})

mylauncher = awful.widget.launcher({
	image = beautiful.awesome_icon,
	menu = mymainmenu
})

return mymainmenu
