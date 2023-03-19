local ok, lsp_conf = pcall(require,"lspconfig")
if not ok then
    print("cannot find lsp_conf")
    return
end
local lua_lsp = lsp_conf.lua_ls
local rust_lsp = lsp_conf.rust_analyzer
local terraform_lsp = lsp_conf.terraformls

--  LSP_CONF
-- ---------------------------------------------------
-- ---------------------------------------------------
local general_on_attach = function()
    local opts = { noremap = true, silent = true, buffer=0 } -- activate mapping only for the current buffer
    vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc') -- I_<c-x><c-o>
    vim.keymap.set("n","K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n","<leader>gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n","<leader>gt", function() vim.lsp.buf.type_definition() end, opts)
    vim.keymap.set("n","<leader>gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n","<leader>gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n","<leader>nc", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n","<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n","<leader>gd", function() vim.diagnostic.open_float() end, opts)
end
lua_lsp.setup({
    on_attach = general_on_attach,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            }
        }
    }
})
rust_lsp.setup({
    on_attach = general_on_attach
})
terraform_lsp.setup({
    on_attach = general_on_attach
})

