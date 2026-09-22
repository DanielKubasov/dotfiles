require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls" }

vim.lsp.config("gopls", {
  settings = {
    gopls = {
      gofumpt = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
      usePlaceholders = true,
      completeUnimported = true,
    },
  },
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
