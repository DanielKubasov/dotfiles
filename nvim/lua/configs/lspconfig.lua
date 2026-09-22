require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls" }

vim.lsp.config("gopls", {
  settings = {
    gopls = {
      gofumpt = true,
      analyses = {
        unusedparams = true,
        shadow = true,
        nilness = true,
        unusedwrite = true,
      },
      staticcheck = true,
      usePlaceholders = true,
      completeUnimported = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
})

vim.lsp.enable(servers)

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({
      async = false,
      timeout_ms = 5000,
    })
  end,
})
