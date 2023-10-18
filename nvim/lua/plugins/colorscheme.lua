return {

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = false,
    priority = 100,
    config = function()
      require("gruvbox").setup({})
    vim.cmd.colorscheme "gruvbox"
    end,
  },
}
