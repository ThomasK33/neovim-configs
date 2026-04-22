return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({
          source = "git_status",
          toggle = true,
          git_base = "HEAD",
        })
      end,
      desc = "Git Explorer",
    },
    {
      "<leader>gE",
      function()
        require("neo-tree.command").execute({
          source = "git_status",
          toggle = true,
          git_base = "HEAD~1",
        })
      end,
      desc = "Git Explorer (last commit)",
    },
  },
}