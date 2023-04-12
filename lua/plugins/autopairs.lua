local M = {}

function M.setup(use)
    use {
        'windwp/nvim-autopairs',
        config = function()
            require'nvim-autopairs'.setup({
                map_bs = false,
                map_cr = false,
                check_ts = true
            })
        end
    }
end

return M
