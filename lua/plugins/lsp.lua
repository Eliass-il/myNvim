require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "jdtls", "pyright", "sqls", "jsonls", "html", "cssls" },
    automatic_installation = true,
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.pyright.setup { capabilities = capabilities }
lspconfig.sqls.setup { capabilities = capabilities }
lspconfig.html.setup { capabilities = capabilities }
lspconfig.cssls.setup { capabilities = capabilities }
lspconfig.jsonls.setup { capabilities = capabilities }
