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

-- Allow tmux navigation from normal and terminal mode
local tmux_nav_keys = {
  { "<C-h>", "Left" },
  { "<C-j>", "Down" },
  { "<C-k>", "Up" },
  { "<C-l>", "Right" },
  { "<C-\\>", "LastActive" },
}

for _, mapping in ipairs(tmux_nav_keys) do
  local key, direction = unpack(mapping)
  local command = ("<cmd>NvimTmuxNavigate%s<cr>"):format(direction)
  vim.keymap.set({ "n", "t" }, key, command)
end

-- Resizing of splits (height/width)
vim.keymap.set("n", "•", "<C-W>5<")
vim.keymap.set("n", "±", "<C-W>5>")
vim.keymap.set("n", "†", "<C-W>+")
vim.keymap.set("n", "‚", "<C-W>-")
