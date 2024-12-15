vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "j", "h")
vim.keymap.set("n", "k", "j")
vim.keymap.set("n", "l", "k")
vim.keymap.set("n", "ö", "l")

vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "{", "{<enter><enter>}<up><tab>")

vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "jj", "<Esc>")


