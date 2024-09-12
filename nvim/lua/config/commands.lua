vim.api.nvim_set_keymap('n', 'mm', ':!%:p:h\\build"<CR>', {noremap = true, silent = true})

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- vim.api.nvim_set_keymap('n', 'swd', '<cmd>lcd %:p:h<CR>', {noremap = true, silent = true})
-- vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = "lcd %:p:h" })
