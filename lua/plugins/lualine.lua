local M = {}

function M.setup(use)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require'lualine'.setup {
                theme = 'onedark',
            }
        end
    }
end

return M
