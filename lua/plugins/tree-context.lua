local M = {}

function M.setup(use)
    use {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require 'treesitter-context'.setup {}
        end,
        requires = 'nvim-treesitter/nvim-treesitter'
    }
end

return M
