local options = {
    number = true,                           -- set numbered lines
    relativenumber = true,                  -- set relative numbered lines
    numberwidth = 2,                         -- set number column width to 2 {default 4}

    backup = false,                          -- creates a backup file
    swapfile = false,                        -- creates a swapfile
    writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    undofile = true,                         -- enable persistent undo
    undodir = os.getenv("HOME") .. "/.vim/undodir",

    cmdheight = 1,                           -- more space in the neovim command line for displaying messages
    pumheight = 10,                          -- pop up menu height

    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window

    expandtab = true,                        -- convert tabs to spaces
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    tabstop = 4,                             -- insert 4 spaces for a tab
    softtabstop = 4,
    smartindent = true,                      -- make indenting smarter again
    wrap = false,                            -- display lines as one long line
    --colorcolumn = "80",                         -- draw a line at column 80

    hlsearch = true,                         -- highlight all matches on previous search pattern
    incsearch = true,
    cursorline = true,                       -- highlight the current line
    ignorecase = true,                       -- Case insensitive searching

    updatetime = 50,                        -- faster completion (4000ms default)
    scrolloff = 10,                           -- is one of my fav
    sidescrolloff = 10,

    termguicolors = true,                    -- set term gui colors (most terminals support this)
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time

    -- Show white space characters a certain way
    list = true,
    listchars = { tab = '——→', multispace = '·', trail = '·', nbsp = '␣' },
    showbreak = '↪ ',

    backspace = { 'start', 'eol', 'indent' },
    --  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    --completeopt = { "menuone", "noselect" }, -- mostly just for omnifunc
    --  conceallevel = 0,                        -- so that `` is visible in markdown files
    --  fileencoding = "utf-8",                  -- the encoding written to a file
    --  ignorecase = true,                       -- ignore case in search patterns
    --  mouse = "a",                             -- allow the mouse to be used in neovim
    --  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    --  showtabline = 2,                         -- always show tabs
    --  smartcase = true,                        -- smart case
    --  timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
}

--vim.opt.shortmess:append "c"

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 99

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.mapleader = " "
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.opt.wildignore:append { '*/node_modules/*' }
