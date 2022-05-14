-- python lsp配置

return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}
