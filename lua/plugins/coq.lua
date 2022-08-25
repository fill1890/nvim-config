local M = {}

function M.setup(use)
    use {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        run = ':COQdeps',
        config = function()
            vim.g.coq_settings = {
                clients = {
                    tree_sitter = { weight_adjust = 1 }
                }
            }
            require'coq'.Now('--shut-up')
        end,
        requires = {
            { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
        }
    }
end

return M
