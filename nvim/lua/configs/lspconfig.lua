require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls" }

-- lspconfig.gopls.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = {"gopls"},
--   filetypes = {"go", "gomod", "gowork", "gotmpl"},
--   root_dir = util.root_pattern("go.work", "go.mod", ".git")
-- }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
