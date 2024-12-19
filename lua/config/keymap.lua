-- Set keyboard mappings
--

local wk = require("which-key")
-- Mapping example
-- {"<leader>e", ":Neotree<CR>")

-- Terminal mappings
wk.add({
    { "<leader>t",  group = "Terminal" },
    { "<leader>tt", ":ToggleTermToggleAll<CR>", desc = "Toggle all terminals", },
    { "<leader>t1", ":1ToggleTerm<CR>",         desc = "Toggle Terminal 1", },
    { "<leader>t2", ":2ToggleTerm<CR>",         desc = "Toggle Terminal 2", },
    { "<leader>t3", ":3ToggleTerm<CR>",         desc = "Toggle Terminal 3", },
    { "<leader>t4", ":4ToggleTerm<CR>",         desc = "Toggle Terminal 4" },
    { "<leader>t5", ":5ToggleTerm<CR>",         desc = "Toggle Terminal 5" },
    { "<leader>1",  ":TermSelect<CR>1<CR><CR>", desc = "Terminal 1",           hidden = true },
    { "<leader>2",  ":TermSelect<CR>2<CR><CR>", desc = "Terminal 2",           hidden = true },
    { "<leader>3",  ":TermSelect<CR>3<CR><CR>", desc = "Terminal 3",           hidden = true },
    { "<leader>4",  ":TermSelect<CR>4<CR><CR>", desc = "Terminal 4",           hidden = true },
    { "<leader>5",  ":TermSelect<CR>5<CR><CR>", desc = "Terminal 5",           hidden = true },

})
vim.keymap.set("t", "<Esc>", "<C-\\><C-n><C-w>k")

-- LazyGit icon
wk.add({

    { "<leader>g", desc = "LazyGit", icon = { icon = "󰊢", color = "orange" } }
}
)

-- Code runner mappings
local coderunner = require("config.coderunner")
wk.add({
    { "<leader>r",  group = "Code Runner" },
    { "<leader>rr", function() coderunner.run_in_last_terminal() end, desc = "Run Code" },
    { "<leader>r1", function() coderunner.run_in_terminal(1) end,     desc = "Run Code in Terminal 1" },
    { "<leader>r2", function() coderunner.run_in_terminal(2) end,     desc = "Run Code in Terminal 2" },
    { "<leader>r3", function() coderunner.run_in_terminal(3) end,     desc = "Run Code in Terminal 3" },
    { "<leader>r4", function() coderunner.run_in_terminal(4) end,     desc = "Run Code in Terminal 4" },
    { "<leader>r5", function() coderunner.run_in_terminal(5) end,     desc = "Run Code in Terminal 5" },
})
