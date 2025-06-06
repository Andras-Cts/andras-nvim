return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<C-\>]],
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 1,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        direction = "horizontal", -- or "vertical", "float", "tab"
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  },
}

