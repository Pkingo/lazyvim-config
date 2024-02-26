return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "hyper",
        config = {
          week_header = {
            enable = true,
          },
          packages = { enable = true },
          shortcut = {
            { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
            {
              icon = " ",
              icon_hl = "@variable",
              desc = "Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              desc = " Projects",
              group = "DiagnosticHint",
              action = "Telescope projects",
              key = "p",
            },
          },
          project = {
            enable = true,
            limit = 8,
            icon = " ",
            label = "Recent projects",
            action = "Telescope find_files cwd=",
          },
          mru = {
            limit = 10,
            icon = "  ",
            label = "Recent files",
          },
        },
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
