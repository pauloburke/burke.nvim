vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fG", telescope_builtin.git_files, { desc = "Telescope git files" })
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fm", telescope_builtin.marks, { desc = "Telescope marks" })
vim.keymap.set("n", "<leader>fq", telescope_builtin.quickfix, { desc = "Telescope quickfix" })

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
