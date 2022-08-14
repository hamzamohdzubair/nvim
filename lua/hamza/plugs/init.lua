return require('packer').startup(function()
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim'); vim.cmd[[colorscheme tokyonight]]
    use{
        'max397574/better-escape.nvim',
        config = function()
            require('better_escape').setup{
                mapping = {'kj'},
            }
        end,
    }
    -- use('winston0410/commented.nvim'); require('commented').setup();
    use('terrortylor/nvim-comment'); require('nvim_comment').setup();
    use{
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup{
                plugins = {
                    spelling = {
                        enabled = true,
                    }
                }
            }
        end
    }
    use('ggandor/lightspeed.nvim')
    use('max-0406/autoclose.nvim')
    use{
        'kylechui/nvim-surround',
        config = function()
            require('nvim-surround').setup{}
        end
    }   
    use{
        'akinsho/toggleterm.nvim',
        tag = 'v2.*',
        config = function()
            require('toggleterm').setup{
                size = 15,
                open_mapping = [[<leader>dd]],
                insert_mappings = false,
            }
        end
        
    }
    require('hamza.plugs.terminals')
    use('timonv/vim-cargo')
    

end)
    
