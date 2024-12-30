return {
    '3rd/diagram.nvim',
    dependencies = '3rd/image.nvim',
    init = function()
        require('diagram').setup({
            integrations = {
                require('diagram.integrations.markdown')
            },
        })
    end,
}
