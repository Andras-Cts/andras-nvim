return {
  "nvimtools/none-ls.nvim",
  config = function()
  local null_ls = require("null-ls")

  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.terraform_fmt,
      null_ls.builtins.formatting.packer,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.diagnostics.pylint,  -- uncomment pylint and comment ruff when I want to swap between these two
      null_ls.builtins.diagnostics.terraform_validate,
      -- null_ls.builtins.diagnostics.ruff,
      -- -- null_ls.builtins.completion.spell,
      -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
    },
  })
  -- vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.py" },
    callback = function()
      vim.lsp.buf.format({
        filter = function(client)
          return client.name == "null-ls"
        end,
      })
    end
  })
  end,
}
