return {
  {
    "sanathks/workspace.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("workspace").setup({
        workspaces = {
          { name = "Repo", path = "~/repos", keymap = { "<leader>fp" } },
          { name = "Configs", path = "~/.config", keymap = { "<leader>fC" } },
        },
      })
    end,
    setup = {
      require("which-key").register({
        ["leader"] = {
          f = {
            p = { "<leader>fp", "Repo projects" },
            C = { "<leader>fC", "Config projects" },
          },
        },
      }),
    },
  },
}
