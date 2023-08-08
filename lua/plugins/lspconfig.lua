local remap = vim.keymap.set

local M = {}

local keybinds = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    remap('n', 'K', vim.lsp.buf.hover, opts)
end

function M.setup(use)

    use {
        'neovim/nvim-lspconfig',
        config = function()
            local lsp = require'lspconfig'
            local c_prep = require'coq'.lsp_ensure_capabilities

            lsp.arduino_language_server.setup(c_prep{
                cmd = {
                    "arduino-language-server",
                    "-cli-config", "/Users/andrew/Library/Arduino15/arduino-cli.yaml",
                    "-fqbn", "arduino:avr:uno",
                    "-cli", "arduino-cli",
                    "-clangd", "clangd"
                },
                on_attach = keybinds
            })

            lsp.clangd.setup(c_prep{ on_attach = keybinds })

            lsp.pyright.setup(c_prep{ on_attach = keybinds })

            lsp.tsserver.setup(c_prep{ on_attach = keybinds })

            lsp.jdtls.setup(c_prep{ on_attach = keybinds })

            lsp.spectral.setup(c_prep{ on_attach = keybinds })

            lsp.ltex.setup(c_prep{
                settings = {ltex = {
                    language = 'en-AU',
                    enabled = {
                        'latex', 'markdown', 'restructuredtext',
                        'python',
                    }
                }},
                filetypes = {
                    'bib', 'gitcommit', 'markdown', 'org', 'plaintex',
                    'tex', 'rst', 'pandoc', 'python', 'lua',
                },

                on_attach = keybinds
            })

            lsp.lua_ls.setup(c_prep{
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT'
                        },
                        diagnostics = {
                            globals = { 'vim' }
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true)
                        },
                        telemetry = {
                            enable = false
                        }
                    }
                },

                on_attach = keybinds
            })



        end
    }


end

return M
