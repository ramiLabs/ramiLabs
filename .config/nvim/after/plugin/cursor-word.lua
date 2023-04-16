local ok , cw = pcall(require, 'mini.cursorword')
if not ok then
    print("cannot find cursor-word")
    return
end
cw.setup()
