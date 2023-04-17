local M = {}

function M.setup(use)
    use {
        'danymat/neogen',
        config = function()
            require 'neogen'.setup {}
        end,
        requires = 'nvim-treesitter/nvim-treesitter'
    }

    vim.keymap.set('n', '<Leader>d', require('neogen').generate, { desc = 'Neogen: Generate autodoc' })
end

return M
