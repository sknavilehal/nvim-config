return {
  "monkoose/neocodeium",
  enabled = false,
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")

    neocodeium.setup({
      debounce = false,
      max_lines = 10000,
      silent = true,
      enable_cmp_source = false,
      -- Show a label when multiple suggestions are available (e.g. "{ 2 }")
      show_label = true,
      -- Hide ghost text when blink.cmp completion menu is visible
      filter = function()
        local ok, blink = pcall(require, "blink.cmp")
        if ok and blink.is_visible() then
          return false
        end
        return true
      end,
    })

    -- Accept full suggestion
    vim.keymap.set("i", "<A-y>", neocodeium.accept, { desc = "Accept AI suggestion" })
    -- Accept next word only
    vim.keymap.set("i", "<A-w>", neocodeium.accept_word, { desc = "Accept AI word" })
    -- Accept next line only
    vim.keymap.set("i", "<A-e>", neocodeium.accept_line, { desc = "Accept AI line" })
    -- Cycle to next suggestion (or trigger if none shown)
    vim.keymap.set("i", "<A-n>", neocodeium.cycle_or_complete, { desc = "Next AI suggestion" })
    -- Cycle to previous suggestion
    vim.keymap.set("i", "<A-p>", function()
      neocodeium.cycle_or_complete(-1)
    end, { desc = "Prev AI suggestion" })
    -- Dismiss suggestion
    vim.keymap.set("i", "<A-c>", neocodeium.clear, { desc = "Clear AI suggestion" })
  end,
}
