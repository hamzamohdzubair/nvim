local km = vim.api.nvim_set_keymap
local op = { noremap = true, silent = true }
local n = function(lhs, rhs)
    return km('n', lhs, rhs, op)
end
local v = function(lhs, rhs)
    return km('v', lhs, rhs, op)
end

km('', '<Space>', '<Nop>', op)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

v('kj', '<esc>')

-- n(';',':')
-- v(';',':')


local wk = require('which-key')
wk.register{
    ['<leader>'] = {
       q = {'<cmd>q<cr>', 'quit'},
       w = {'<cmd>up<cr>', 'save'},
       gg = {'<cmd>LazyGit<cr>', 'lazygit'},
       p = {'<cmd>PackerSync<cr>', 'sync packer'},
       d = {
           name = "shell",
           d = {'new'},
           f = {'gitui'},
           h = {'htop'},
       },
       -- [';'] = {'<c-w>', ''},
    }
}
