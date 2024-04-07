return {
  {
    "telescope.nvim",
    opts = function()
      local actions = require("telescope.actions")
      local lga_actions = require("telescope-live-grep-args.actions")

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
              ["<C-k>"] = lga_actions.quote_prompt(),
            },
            n = {
              ["«"] = actions.send_selected_to_qflist + actions.open_qflist,
              ["<CR>"] = select_one_or_multi,
            },
          },
        },
      }
    end,
  },
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    opts = function()
      require("telescope").load_extension("live_grep_args")
    end,
    keys = {
      {
        "<leader>fg",
        function()
          require("telescope").extensions.live_grep_args.live_grep_args()
        end,
        desc = "Live Grep Args",
      },
    },
  },
}
