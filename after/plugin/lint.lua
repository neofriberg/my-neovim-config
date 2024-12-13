require('lint').linters_by_ft = {
    python = {'flake8'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = "*.py",
    callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require("lint").try_lint()
    vim.cmd("silent !black %")
    vim.cmd("edit")

    -- You can call `try_lint` with a linter name or a list of names to always
    -- run specific linters, independent of the `linters_by_ft` configuration
  end,
})


