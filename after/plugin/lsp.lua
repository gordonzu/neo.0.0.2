local lsp = require('lsp-zero')

lsp.preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

lsp.ensure_installed({
  'tsserver',
  'lua_ls',
  'pylsp',
  'quick_lint_js',
  'cmake',
--  'clangd',
})

lsp.nvim_workspace()

lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
	suggest_lsp_servers = true,
    	setup_servers_on_start = true,
	sign_icons = { }
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "gw", function() vim.lsp.buf.document_symbol() end, opts)
    vim.keymap.set("n", "gw", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>af", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

local servers = {
    'tsserver',
    'lua_ls',
    'pylsp',
    'quick_lint_js',
    'cmake',
  --  'clangd',
}

require('lspconfig').tsserver.setup({
    single_file_support = false,
    on_attach = function(client, bufnr)
        print('hello tsserver')
    end
})

require('lspconfig').lua_ls.setup({
    single_file_support = false,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    },
    on_attach = function(client, bufnr)
        print('hello lua_ls')
    end
})

require('lspconfig').pylsp.setup({
    single_file_support = false,
    on_attach = function(client, bufnr)
        print('hello pylsp')
    end
})

require('lspconfig').quick_lint_js.setup({
    single_file_support = false,
    on_attach = function(client, bufnr)
        print('hello quick_lint_js')
    end
})

require('lspconfig').cmake.setup({
    single_file_support = false,
    on_attach = function(client, bufnr)
        print('hello cmake')
    end
})

 require('lspconfig').clangd.setup({
     single_file_support = true,
     on_attach = function(client, bufnr)
         print('hello clangd')
     end
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})





