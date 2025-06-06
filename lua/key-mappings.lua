-- Key mappings
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "<leader>o", ":Neotree filesystem reveal left<CR>", { desc = "Show Neotree filesystem left" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Fuzzy buffer switch" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format code" })
-- Go to terminal (if exists, switch to it; else open it)
vim.keymap.set("n", "<leader>tt", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local term = Terminal:new({ id = 1, direction = "horizontal" })

  if not term:is_open() then
    term:open()
  else
    term:focus()
  end
  vim.cmd("startinsert")
end, { desc = "Focus terminal" })

-- Go back to code (from terminal)
vim.keymap.set("t", "<leader>cc", [[<C-\><C-n><C-w>k]], { desc = "Go to code window" })

