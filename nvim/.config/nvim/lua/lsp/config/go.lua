local opts = {
    settings = {
        gopls = {
            analyses = { unusedparams = true, nonewvars = true },
            staticcheck = true,
            usePlaceholders = false,
            completeUnimported = true,
        },
    },
    on_attach = function(client)
        -- 禁用格式化功能，交给专门插件插件处理
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end,
}

return {
    on_setup = function(server)
        server:setup(opts)
    end,
}
