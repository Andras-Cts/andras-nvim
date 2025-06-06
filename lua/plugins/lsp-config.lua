return
  {
    {
      "williamboman/mason.nvim",
      config = function ()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function ()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "ts_ls", "bashls", "pyright", "terraformls" }
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      config = function ()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        -- capabilities.textDocument.completion.completionItem.snippetSupport = false
        local lspconfig = require("lspconfig")

        local on_attach = function(_, bufnr)
          local opts = { buffer = bufnr}
          vim.keymap.set('n', '<leader>ho', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        end

        lspconfig.lua_ls.setup({ on_attach = on_attach, capabilities = capabilities, })
        lspconfig.ts_ls.setup({ on_attach = on_attach,  capabilities = capabilities, })
        lspconfig.bashls.setup({ on_attach = on_attach,  capabilities = capabilities, })
        lspconfig.pyright.setup({ on_attach = on_attach,  capabilities = capabilities, })
        lspconfig.terraformls.setup({ on_attach = on_attach,  capabilities = capabilities, })
      end,
    },
  }
