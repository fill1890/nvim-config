local M = {}

function M.setup(use)
    use {
        'romgrk/barbar.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function()
            require 'bufferline'.setup {
                auto_hide = true,
                closable = false,
            }
        end
    }
end

return M
