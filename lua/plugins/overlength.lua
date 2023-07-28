local M = {}

function M.setup(use)
    use {
        'lcheylus/overlength.nvim',
        config = function()
            require 'overlength'.setup {
                default_overlength = 80,
                textwidth_mode = 1,
                highlight_to_eol = false,
            }
        end
    }
end

return M
