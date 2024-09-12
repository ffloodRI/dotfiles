-- vim.api.nvim_set_keymap('n', 's', '', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'S', '', { noremap = true, silent = true })

local hop = require('hop')
local directions = require('hop.hint').HintDirection

vim.keymap.set('', 's', function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, {remap=true})

vim.keymap.set('', 'S', function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, {remap=true})
