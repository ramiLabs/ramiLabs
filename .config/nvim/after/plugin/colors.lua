local colorscheme="github-theme"
local ok, theme = pcall(require, colorscheme)
local default = "industry"
--[[local ofirkai_opts = {
    scheme = theme.scheme,
    custom_hlgroups = {},
    remove_italics = true
}--]]
if not ok then
    print("colorscheme " .. colorscheme .. " not found!")
    vim.cmd('colorscheme' .. ' ' .. default)
    return
end
if ok then
    theme.setup({
        theme_style = "dimmed",
        function_style = "italic",
        sidebars = { "packer" }
    })
end
