local ok , autoclose = pcall(require, 'autoclose')
if not ok then
    print("cannot find autoclose")
    return
end
autoclose.setup({
    keys = {
        ["("] = { escape = true, close = true, pair = "()"},
        ["["] = { escape = true, close = true, pair = "[]"},
        ["{"] = { escape = true, close = true, pair = "{}"},

        [">"] = { escape = true, close = false, pair = "<>"},
        [")"] = { escape = true, close = false, pair = "()"},
        ["]"] = { escape = true, close = false, pair = "[]"},
        ["}"] = { escape = true, close = false, pair = "{}"},

        ['"'] = { escape = true, close = true, pair = '""'},
        ["'"] = { escape = false, close = false, pair = "''"},
        ["`"] = { escape = false, close = false, pair = "``"},
        },
    options = {
        disabled_filetypes = { "text" },
        disable_when_touch = true,
    },
})

