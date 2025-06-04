require("nvim-treesitter.configs").setup {
    ensure_installed = { "java", "javascript", "typescript", "python", "sql", "html", "css", "lua" },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true }
}
