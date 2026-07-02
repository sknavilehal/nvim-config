-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Go to buffer by number (like VS Code Cmd+1, Cmd+2...)
for i = 1, 9 do
  vim.keymap.set("n", "<leader>" .. i, function()
    require("bufferline").go_to(i, true)
  end, { desc = "Go to Buffer " .. i })
end

-- Super fast branch switching
vim.keymap.set("n", "gc", function()
  Snacks.picker.git_branches()
end, { desc = "Git Branches" })
