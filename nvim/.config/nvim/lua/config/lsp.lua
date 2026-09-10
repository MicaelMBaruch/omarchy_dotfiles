-- enabling LSP configs (all of them come from nvim-lspconfig native plugin)
--
-- Lua
vim.lsp.enable("lua_ls");
--
--Typst
vim.lsp.config("tinymist", {
    settings = {
        exportPdf = "onSave",
        outputPath = "$root/$name",
    }
})
vim.lsp.enable("tinymist");
--
-- Python
-- vim.lsp.enable("jdtls") -- Jedi, alternative to Ruff
vim.lsp.enable("ruff_lsp"); -- Ruff, lsp based on Rust
