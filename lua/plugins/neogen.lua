local M = {}

function M.setup(use)
    use {
        'danymat/neogen',
        config = function()
            require 'neogen'.setup {}
        end,
        requires = 'nvim-treesitter/nvim-treesitter'
    }
end

return M
