local M = {}

function M.setup(use)
    use {
        'lewis6991/hover.nvim',
        config = function()
            require 'hover'.setup {
                init = function()
                    require 'hover.providers.lsp'
                    require 'hover.providers.man'
                end
            }
        end
    }

    vim.keymap.set('n', 'K', require('hover').hover, { desc = 'hover.nvim' })
end

return M
