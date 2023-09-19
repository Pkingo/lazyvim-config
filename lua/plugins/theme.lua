return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "yeddaif/neovim-purple",
    opts = function()
      vim.g.nobackground = 1
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "neovim_purple",
    },
  },
}
