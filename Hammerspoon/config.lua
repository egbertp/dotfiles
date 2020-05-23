hs.window.animationDuration = 0

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "m", function()
 hs.window.focusedWindow():toggleFullScreen()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local max = win:screen():frame()

 f.x = max.x
 f.y = max.y
 f.w = max.w / 2
 f.h = max.h
 win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local max = win:screen():frame()

 f.x = max.x + (max.w / 2)
 f.y = max.y
 f.w = max.w / 2
 f.h = max.h
 win:setFrame(f)
end)


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local max = win:screen():frame()

 f.x = max.x
 f.y = max.y
 f.w = max.w
 f.h = max.h
 win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "Up", function()
 hs.window.focusedWindow():moveOneScreenNorth()
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "Down", function()
 hs.window.focusedWindow():moveOneScreenSouth()
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "Left", function()
 hs.window.focusedWindow():moveOneScreenEast()
end)

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "Right", function()
 hs.window.focusedWindow():moveOneScreenWest()
end)

-- Fast switch to terminal and back
hs.hotkey.bind("alt", "space", function()
   local focusedApp = hs.window.focusedWindow():application()

   if focusedApp:name() == "iTerm" then
       if previousApp ~= nil then
           previousApp:activate()
       else
           hs.window.switcher.nextWindow()
       end
   else
       previousApp = hs.window.focusedWindow():application()
       hs.application.launchOrFocus("iTerm")
   end
end)

hs.hotkey.bind({"cmd", "ctrl", "alt"}, "l", function()
 hs.caffeinate.startScreensaver()
end)

