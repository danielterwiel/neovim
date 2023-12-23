local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            -- Specify any additional options here, or leave empty to use defaults
        }),
    },
})

