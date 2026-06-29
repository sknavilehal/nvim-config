-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- AI shortcuts (feels like Cursor)
vim.keymap.set({ "n", "v" }, "<leader>aa", "<cmd>CodeCompanionActions<cr>", { desc = "AI Actions" })
vim.keymap.set({ "n", "v" }, "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "AI Chat" })
vim.keymap.set("v", "<leader>aa", "<cmd>CodeCompanionChat Add<cr>", { desc = "Add selection to Chat" })
vim.keymap.set({ "n", "v" }, "<leader>ai", "<cmd>CodeCompanion<cr>", { desc = "Inline AI" })

-- Common prompt shortcuts
vim.keymap.set("n", "<leader>ae", "<cmd>CodeCompanion /explain<cr>", { desc = "Explain Code" })
vim.keymap.set("n", "<leader>at", "<cmd>CodeCompanion /tests<cr>", { desc = "Generate Tests" })
vim.keymap.set("n", "<leader>af", "<cmd>CodeCompanion /fix<cr>", { desc = "Fix Code" })

vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

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
