local lsp = require('lsp-zero').preset({})

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

-- Set up LSP on_attach function
lsp.on_attach(function(client, bufnr)
  -- See :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })
end)

-- Set up CMP (Completion-Nvim) configuration
cmp.setup({
  mapping = {
    ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
    ["<Tab>"] = cmp_action.luasnip_supertab(),
    ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
  },
  formatting = {
    format = require("lspkind").cmp_format({ mode = "symbol" }),
  },
})

-- Set up LSP configuration
lsp.setup()

