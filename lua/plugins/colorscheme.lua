return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },

  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "default"        -- try: atlantis, andromeda, shusia, maia
      vim.g.sonokai_better_performance = 1
    end,
  },
}
