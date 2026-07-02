return {
  {
    "olimorris/codecompanion.nvim",
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

    -- Keymaps for CodeCompanion (moved here from keymaps.lua)
    keys = {
      -- AI shortcuts (feels like Cursor)
      { "<leader>aa", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "AI Actions" },
      { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "AI Chat" },
      { "<leader>aa", "<cmd>CodeCompanionChat Add<cr>", mode = "v", desc = "Add selection to Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = { "n", "v" }, desc = "Inline AI" },

      -- Common prompt shortcuts
      { "<leader>ae", "<cmd>CodeCompanion /explain<cr>", mode = "n", desc = "Explain Code" },
      { "<leader>at", "<cmd>CodeCompanion /tests<cr>", mode = "n", desc = "Generate Tests" },
      { "<leader>af", "<cmd>CodeCompanion /fix<cr>", mode = "n", desc = "Fix Code" },
    },
  },
}
