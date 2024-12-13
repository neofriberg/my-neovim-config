local config = {
    cmd = {vim.fn.expand('~/.local/share/nvim/mason/bin/jdtls')},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

vim.api.nvim_set_keymap('n', '<leader>r', ':w<CR>:!javac % && java %:r<CR>', { noremap = true, silent = true })
--~/.local/share/nvim/mason/bin
