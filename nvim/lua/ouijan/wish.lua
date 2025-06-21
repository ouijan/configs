local function format(bufnr)
    local bufnr = bufnr or vim.api.nvim_get_current_buf()

    -- Check if vtsls is attached
    local clients = vim.lsp.get_clients({ bufnr = bufnr })
    for _, client in ipairs(clients) do
        if client.name == "vtsls" then
            vim.lsp.buf.code_action({
                context = { only = { "source.organizeImports" } },
                apply = true,
            })
            break
        end
    end

    -- Then format the buffer
    -- vim.lsp.buf.format({
    --     bufnr = bufnr,
    --     async = true,
    -- })
    require("conform").format({ bufnr = bufnr })
end

Wish = {
    format = format,
}
