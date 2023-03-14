local builtin = require('telescope.builtin')
local action = require('telescope.actions')
local telescope = require('telescope')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("grep ->") })
end, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = action.close,
            },
        },
    },
})
