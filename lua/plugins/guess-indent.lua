local M = {}

function M.setup(use)
    use {
        'nmac427/guess-indent.nvim',
        config = function()
            require'guess-indent'.setup({})
        end
    }
end

return M
