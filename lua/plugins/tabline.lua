local M = {}

function M.setup(use)
    use {
        'crispgm/nvim-tabline',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'tabline'.setup {
                show_index = true,
            }
        end
    }
end

return M
