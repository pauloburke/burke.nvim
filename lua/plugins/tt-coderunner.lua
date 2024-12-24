return {
    'pauloburke/tt-coderunner.nvim',
    dependencies = { "akinsho/toggleterm.nvim" },
    opts = {
        save_first = true, -- Save the file before running
        code_runner = {
            -- A mapping of filetypes to their respective interpreters
            py = "python3",
            lua = "lua",
            sh = "bash",
            -- Add more filetypes and their interpreters here
        }
    },
    config = true,
}
