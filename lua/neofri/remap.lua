vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "j", "h")
vim.keymap.set("n", "k", "j")
vim.keymap.set("n", "l", "k")
vim.keymap.set("n", "ö", "l")

vim.keymap.set("v", "j", "h")
vim.keymap.set("v", "k", "j")
vim.keymap.set("v", "l", "k")
vim.keymap.set("v", "ö", "l")

vim.keymap.set("i", "jj", "<Esc>")


local wrapping_pairs = {
    ["("] = ")",
    ["["] = "]",
    ["{"] = "}",
    ["\""] = "\"",
    ["'"] = "'",
}

--for start_char, end_char in pairs(wrapping_pairs) do
--    vim.keymap.set("n", "<leader>w" .. start_char, "ciw" .. start_char .. end_char .. "<left><Esc>p")
--end

for start_char, end_char in pairs(wrapping_pairs) do
    vim.keymap.set("n", "<leader>W" .. start_char, "ciW" .. start_char .. end_char .. "<left><Esc>p")
end

local function wrap_text()
    --highlighting code
    local mode = vim.fn.mode()

    --check the mode
    if mode == "v" or mode == "V" then
        --get get the highlighted area
        local start_pos = vim.fn.getpos("'<")
        local end_pos = vim.fn.getpos("'>")
        --getpos returns a table with 4 values

        local start_line, start_col = start_pos[2], start_pos[3]
        local end_line, end_col = end_pos[2], end_pos[3]
        
        
       -- print(start_line)
        print(vim.fn.getline(start_line))
        end
end
vim.keymap.set("v", "<leader>w(", wrap_text)


