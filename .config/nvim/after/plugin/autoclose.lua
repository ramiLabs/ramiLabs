local ok , autoclose = pcall(require, 'autoclose')
if not ok then
    print("cannot find autoclose")
    return
end

autoclose.setup({
    keys = {
        ["("] = { escape = false, close = true, pair = "()"},
        ["["] = { escape = false, close = true, pair = "[]"},
        ["{"] = { escape = false, close = true, pair = "{}"},

        [">"] = { escape = true, close = false, pair = "<>"},
        [")"] = { escape = true, close = false, pair = "()"},
        ["]"] = { escape = true, close = false, pair = "[]"},
        ["}"] = { escape = true, close = false, pair = "{}"},

        ['"'] = { escape = true, close = true, pair = '""'},
        ["'"] = { escape = true, close = true, pair = "''"},
        ["`"] = { escape = true, close = true, pair = "``"},
        },
    options = {
        disabled_filetypes = { "text" },
        disable_when_touch = false,
    },
})

