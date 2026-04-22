if true then
  return {}
end

return {
  {
    dir = "/Users/thomask33/GitHub/claudecode.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- Optional configuration
      -- log_level = "debug",
      -- terminal_cmd = "claude --debug",
      -- terminal = {
      --   provider = "native",
      -- },
    },
    keys = {
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      -- Add file from nvim-tree or neo-tree
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree" },
      },
    },
    dev = true,
  },
}
