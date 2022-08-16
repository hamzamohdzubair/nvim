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
       p = {'<cmd>PackerSync<cr>', 'sync packer'},
       d = {
           name = 'shell',
           d = {'new'},
           f = {'gitui'},
           h = {'htop'},
       },
       s = {'<cmd>lua vim.fn.system("rm ~/.local/share/nvim/swap/*")<cr>', 'del swp'},
       e = {
           name = 'explorer',
           e = {'<cmd> NvimTreeToggle .<cr>', 'pwd'},
           r = {'<cmd> NvimTreeToggle $HOME<cr>', 'home'},
       }
       -- [';'] = {'<c-w>', ''},
    }
}
