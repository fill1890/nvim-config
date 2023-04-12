local M = {}

function M.setup(use)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly',
        config = function()
            require'nvim-tree'.setup {
                view = {
                    mappings = {
                        list = {
                            { key = '<space>', action = 'edit' }
                        }
                    }
                }
            }
        end
    }
end

return M
