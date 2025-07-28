return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.o.background = "dark" -- or "light" if you want
    require("gruvbox").setup({
      contrast = "", -- "soft", "hard", or ""
      italic = {
        strings = false,
        comments = true,
        operators = false,
        folds = true,
      },
      overrides = {},
    })
    vim.cmd("colorscheme gruvbox")
  end,
}
