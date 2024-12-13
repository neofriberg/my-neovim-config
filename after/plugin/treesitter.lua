require'nvim-treesitter.configs'.setup {
	ensure_installed = {
        "javascript", "typescript",
        "c", "lua",
        "java", "python",
        'vimdoc', 'vim',
        'r', 'html',
        'css', 'json',
        'markdown', 'markdown_inline'
    },
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
