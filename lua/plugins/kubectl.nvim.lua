if true then
  return {}
end

return {
  {
    "ramilito/kubectl.nvim",
    opts = {},
    keys = {
      {
        "<leader>k",
        function()
          require("kubectl").open()
        end,
        desc = "Kubectl",
      },
    },
  },
}
