-- Set keyboard mappings
--
-- Set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Mapping example
-- vim.keymap.set("n", "<leader>e", ":Neotree<CR>")

-- Terminal mappings

vim.keymap.set("n", "<leader>tt", ":ToggleTermToggleAll<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>t1", ":1ToggleTerm<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>t2", ":2ToggleTerm<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>t3", ":3ToggleTerm<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>t4", ":4ToggleTerm<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>t5", ":5ToggleTerm<CR>", { desc = "Terminal" })
vim.keymap.set("n", "<leader>1", ":TermSelect<CR>1<CR><CR>", { desc = "Terminal 1" })
vim.keymap.set("n", "<leader>2", ":TermSelect<CR>2<CR><CR>", { desc = "Terminal 2" })
vim.keymap.set("n", "<leader>3", ":TermSelect<CR>3<CR><CR>", { desc = "Terminal 3" })
vim.keymap.set("n", "<leader>4", ":TermSelect<CR>4<CR><CR>", { desc = "Terminal 4" })
vim.keymap.set("n", "<leader>5", ":TermSelect<CR>5<CR><CR>", { desc = "Terminal 5" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n><C-w>k")
