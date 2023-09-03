return {
  "ThePrimeagen/harpoon",
  lazy = true,
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon.mark").add_file()
      end,
    },
    {
      "<C-e>",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
    },
    {
      "<leader>h1",
      function()
        require("harpoon.ui").nav_file(1)
      end,
    },
    {
      "<leader>h2",
      function()
        require("harpoon.ui").nav_file(2)
      end,
    },
    {
      "<leader>h3",
      function()
        require("harpoon.ui").nav_file(3)
      end,
    },
    {
      "<leader>h4",
      function()
        require("harpoon.ui").nav_file(4)
      end,
    },
  },
  config = function()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    })
  end,
}
