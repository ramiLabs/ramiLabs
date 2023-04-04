local ok, wpicker = pcall(require, "window-picker")
if not ok then
    print "window-picker not loaded"
    return
end

wpicker.setup()
