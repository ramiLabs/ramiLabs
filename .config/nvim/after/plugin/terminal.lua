local ok, terminal = pcall(require,"terminal")
if not ok then return end
terminal.setup({
    layout = { open_cmd = "botright new" },
    cmd = { vim.o.shell },
    autoclose = false,
})
local opts = { noremap = true, silent = true }
local bind = vim.keymap.set
bind("t", '<C-\\><C-\\>', '<C-\\><C-n>', opts);
