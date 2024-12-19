local M = {}

-- Helper function to determine the appropriate command for the file
local function get_run_command(filepath)
    local extension = filepath:match("%.([^.]+)$")
    if extension == "py" then
        return "python3 " .. filepath
    elseif extension == "sh" then
        return "bash " .. filepath
    else
        vim.notify("Unsupported file type: " .. (extension or "unknown"), vim.log.levels.ERROR)
        return nil
    end
end

-- Function to run the current file in a specified terminal
function M.run_in_terminal(term_num)
    local filepath = vim.fn.expand("%:p")
    if not filepath or filepath == "" then
        vim.notify("No file is currently focused.", vim.log.levels.ERROR)
        return
    end

    local command = get_run_command(filepath)
    if not command then
        return
    end

    -- Use :<term_num>ToggleTerm to execute the command
    vim.cmd(term_num .. "ToggleTerm")
    vim.cmd("TermExec cmd='" .. command .. "'")
end

-- Function to run the current file in the last active terminal
function M.run_in_last_terminal()
    local filepath = vim.fn.expand("%:p")
    if not filepath or filepath == "" then
        vim.notify("No file is currently focused.", vim.log.levels.ERROR)
        return
    end

    local command = get_run_command(filepath)
    if not command then
        return
    end

    -- Execute the command in the last active terminal
    vim.cmd("TermExec cmd='" .. command .. "'")
end

return M
