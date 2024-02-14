return {
  "telescope.nvim",
  opts = function()
    local actions = require("telescope.actions")

    local select_one_or_multi = function(prompt_bufnr)
      local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
      local multi = picker:get_multi_selection()
      if not vim.tbl_isempty(multi) then
        require("telescope.actions").close(prompt_bufnr)
        for _, j in pairs(multi) do
          if j.path ~= nil then
            vim.cmd(string.format("%s %s", "edit", j.path))
          end
        end
      else
        require("telescope.actions").select_default(prompt_bufnr)
      end
    end

    return {
      defaults = {
        mappings = {
          i = {
            ["«"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<CR>"] = select_one_or_multi,
          },
          n = {
            ["«"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<CR>"] = select_one_or_multi,
          },
        },
      },
    }
  end,
}
