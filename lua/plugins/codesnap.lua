return {
  "mistricky/codesnap.nvim",
  build = "make",
  cmd = { "CodeSnap", "CodeSnapSave", "CodeSnapASCII", "CodeSnapHighlight", "CodeSnapHighlightSave" },
  opts = {
    mac_window_bar = false,
    watermark = "",
    code_font_family = "FiraCode Nerd Font",
  },
}
