return {
  {
    "sudo-tee/opencode.nvim",
    config = function()
      -- require("opencode").setup({
        -- Add your custom config here (see below for recommendations)
      -- })
      require("opencode").setup({
        keymap_prefix = "<leader>o",     -- Change if you prefer a different prefix
        default_mode = "build",          -- or "plan"
        preferred_picker = "snacks",     -- or "telescope", etc. (if you have one)
        preferred_completion = "blink",  -- matches many LazyVim setups
        ui = {
          position = "right",            -- or "left"
          input_position = "bottom",
          window_width = 0.45,
    },
  -- Add more as needed (see full defaults in plugin README)
})
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",

      -- Recommended for nice markdown rendering in the chat output
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
          file_types = { "markdown", "opencode_output" },
        },
        ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
      },

      -- Optional but highly recommended: pick ONE picker + ONE completion
      -- For picker (file mentions, sessions, etc.)
      "folke/snacks.nvim",           -- or "nvim-telescope/telescope.nvim", etc.

      -- For completion (in input window)
      "saghen/blink.cmp",            -- or "hrsh7th/nvim-cmp"
    },
  },
}
