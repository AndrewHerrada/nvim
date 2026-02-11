-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })

-- Tab out of brackets, quotes, etc.
vim.keymap.set("i", "<Tab>", function()
  local col = vim.fn.col(".")
  local line = vim.fn.getline(".")
  local next_char = line:sub(col, col)
  if vim.tbl_contains({ ")", "]", "}", '"', "'", "`" }, next_char) then
    return "<Right>"
  else
    return "<Tab>"
  end
end, { expr = true, noremap = true })

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")
