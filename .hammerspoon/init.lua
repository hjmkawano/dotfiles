hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
    hs.alert.show("Hello World!")
end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
--     hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()

    win:centerOnScreen(screen)
end)


-- We can build on the simple window movement example to implement a set of keyboard shortcuts that allow us to move a window in all directions, using the nethack movement keys:

-- y   k   u
-- h       l
-- b   j   n

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Y", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 20
    f.y = f.y - 20
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.y = f.y - 20
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x + 20
    f.y = f.y - 20
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 40
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x + 40
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "B", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 20
    f.y = f.y + 20
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.y = f.y + 20
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x + 20
    f.y = f.y + 20
    win:setFrame(f)
end)
