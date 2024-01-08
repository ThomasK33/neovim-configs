-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, "ö", ";")
vim.keymap.set({ "n", "v" }, "Ö", ":")
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

local Util = require("lazyvim.util")

-- lazygit
vim.keymap.set("n", "<leader>gl", function()
  Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazygit (root dir)" })
vim.keymap.set("n", "<leader>gL", function()
  Util.terminal({ "lazygit" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazygit (cwd)" })

-- GitUI

vim.keymap.set("n", "<leader>gg", function()
  Util.terminal({ "gitui" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
end, { desc = "GitUI (root dir)" })
vim.keymap.set("n", "<leader>gG", function()
  Util.terminal({ "gitui" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "GitUI (cwd)" })

-- Terminal

local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
vim.keymap.set("n", "ä", lazyterm, { desc = "Terminal (root dir)" })
