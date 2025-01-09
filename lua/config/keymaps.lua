-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, "ö", ";")
vim.keymap.set({ "n", "v" }, "Ö", ":")
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set({ "n", "v" }, "§", "^")

-- Line moving
vim.keymap.set("n", "º", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "∆", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "º", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "∆", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "∆", ":m '<-2<cr>gv=gv", { desc = "Move up" })
vim.keymap.set("v", "º", ":m '>+1<cr>gv=gv", { desc = "Move down" })

-- Tmux
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>")
vim.keymap.set("n", "<C-\\>", "<cmd>NvimTmuxNavigateLastActive<cr>")
vim.keymap.set("n", "<C-Space>", "<cmd>NvimTmuxNavigateNext<cr>")

-- Resizing of splits (height/width)
vim.keymap.set("n", "•", "<C-W>5<")
vim.keymap.set("n", "±", "<C-W>5>")
vim.keymap.set("n", "†", "<C-W>+")
vim.keymap.set("n", "‚", "<C-W>-")
