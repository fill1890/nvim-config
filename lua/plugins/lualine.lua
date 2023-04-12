local M = {}

function M.setup(use)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require'lualine'.setup {
                theme = 'onedark',
            }
        end
    }
end

return M
