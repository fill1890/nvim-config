local M = {}

function M.setup(use)
    use {
        'Wansmer/treesj',
        requires = { 'nvim-treesitter' },
        config = function()
            require 'treesj'.setup {
                use_default_keymaps = false,
            }
        end
    }

    vim.keymap.set('n', '<Leader>j', require('treesj').join, { desc = 'TreeSJ: Join lines' })
    vim.keymap.set('n', '<Leader>s', require('treesj').split, { desc = 'TreeSJ: Split line' })
end

return M
