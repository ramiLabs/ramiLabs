local ok, outline = pcall(require,"symbols-outline")
if not ok then return end
outline.setup({})
local opts = { noremap = true, silent = true }
local bind = vim.keymap.set
bind("n", "<leader>gs", "<cmd>SymbolsOutline<CR>", opts)
