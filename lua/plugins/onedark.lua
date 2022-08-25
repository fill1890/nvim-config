local M = {}

function M.setup(use)
    use {
        'navarasu/onedark.nvim',
        config = function()
            require'onedark'.setup {
                style = 'warmer'
            }
            require'onedark'.load()
        end
    }
end

return M
