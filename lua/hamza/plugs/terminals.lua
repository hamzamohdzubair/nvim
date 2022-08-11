local km = vim.api.nvim_set_keymap
local op = { noremap = true, silent = true }
local n = function(lhs, rhs)
    return km('n', lhs, rhs, op)
end

local Terminal = require('toggleterm.terminal').Terminal

term_htop = Terminal:new({ cmd = 'htop', direction = 'float'})
n('<leader>dh', '<cmd>lua term_htop:toggle()<cr>')

term_gitui = Terminal:new{ cmd = 'gitui', direction = 'float'}
n('<leader>df', '<cmd>lua term_gitui:toggle()<cr>')


