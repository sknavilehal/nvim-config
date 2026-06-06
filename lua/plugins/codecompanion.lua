return {
  {
    "olimorris/codecompanion.nvim",
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            schema = {
              model = "claude-opus-4-8", -- or newer model if available
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = "anthropic" },
        inline = { adapter = "anthropic" },
      },
      display = {
        chat = {
          window = {
            width = 0.25, -- ← Change this value (default is usually ~0.45)
            layout = "vertical", -- "vertical" | "horizontal" | "float"
          },
        },
      },
    },
  },
}
