return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","ts_ls" , "html", "cssls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayVariableTypeHints = true,
            },
          },
        },
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "typescript.tsx" },
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n','K',vim.lsp.buf.hover,{})
      vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})
    end
  },
  {
    "hrsh7th/cmp-cmdline",
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function ()
      local cmp = require'cmp'
      -- Setup for ':' command line (Ex commands, file paths)
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },      -- complete file paths
          { name = 'cmdline' }    -- complete commands
        })
      })
      -- Setup for '/' and '?' searches (buffer text)
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })
    end
  }
}

