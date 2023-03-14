local ok, neogit = pcall(require, 'neogit')
if not ok then
    print("cannot find neogit!")
    return
end

local config = {
    disable_commit_confirmation = true,
    integrations = {
        diffview = true
    }
}

local opts = { noremap = true, silent = true }
local bind = vim.keymap.set

neogit.setup(config)

bind("n", "<leader>gg", ":Neogit<cr>", opts)
bind("n", "<leader>gd", ":DiffviewOpen<cr>", opts)
bind("n", "<leader>gD", ":DiffviewOpen main<cr>", opts)
bind("n", "<leader>gl", ":Neogit log<cr>", opts)
