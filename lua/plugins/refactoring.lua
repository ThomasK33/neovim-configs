local pick = function()
  local refactoring = require("refactoring")
  if LazyVim.pick.picker.name == "telescope" then
    return require("telescope").extensions.refactoring.refactors()
  elseif LazyVim.pick.picker.name == "fzf" then
    local fzf_lua = require("fzf-lua")
    local results = refactoring.get_refactors()

    local opts = {
      fzf_opts = {},
      fzf_colors = true,
      actions = {
        ["default"] = function(selected)
          refactoring.refactor(selected[1])
        end,
      },
    }
    fzf_lua.fzf_exec(results, opts)
  else
    refactoring.select_refactor()
  end
end

return {
  "ThePrimeagen/refactoring.nvim",
  opts = {
    print_var_statements = {
      go = {
        'fmt.Printf("%s %%v\\n", %s)',
      },
    },
  },
  keys = {
    { "<leader>r", "", desc = "+refactor", mode = { "n", "x" } },
    {
      "<leader>rs",
      pick,
      mode = { "n", "x", "v" },
      desc = "Refactor",
    },
    {
      "<leader>ri",
      function()
        return require("refactoring").refactor("Inline Variable")
      end,
      mode = { "n", "x", "v" },
      desc = "Inline Variable",
      expr = true,
    },
    {
      "<leader>rb",
      function()
        return require("refactoring").refactor("Extract Block")
      end,
      mode = { "n", "x", "v" },
      desc = "Extract Block",
      expr = true,
    },
    {
      "<leader>rf",
      function()
        return require("refactoring").refactor("Extract Block To File")
      end,
      mode = { "n", "x", "v" },
      desc = "Extract Block To File",
      expr = true,
    },
    {
      "<leader>rP",
      function()
        require("refactoring").debug.printf({ below = false })
      end,
      desc = "Debug Print",
    },
    {
      "<leader>rp",
      function()
        require("refactoring").debug.print_var({ normal = true })
      end,
      mode = { "n", "x", "v" },
      desc = "Debug Print Variable",
    },
    {
      "<leader>rc",
      function()
        require("refactoring").debug.cleanup({})
      end,
      desc = "Debug Cleanup",
    },
    {
      "<leader>rf",
      function()
        return require("refactoring").refactor("Extract Function")
      end,
      mode = { "n", "x", "v" },
      desc = "Extract Function",
      expr = true,
    },
    {
      "<leader>rF",
      function()
        return require("refactoring").refactor("Extract Function To File")
      end,
      mode = { "n", "x", "v" },
      desc = "Extract Function To File",
      expr = true,
    },
    {
      "<leader>rx",
      function()
        return require("refactoring").refactor("Extract Variable")
      end,
      mode = { "n", "x", "v" },
      desc = "Extract Variable",
      expr = true,
    },
  },
}
