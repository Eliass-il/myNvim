require("nvim-treesitter.configs").setup {
    ensure_installed = { "java", "javascript", "typescript", "python", "sql", "html", "css", "lua" },
    highlight = { enable = true },
    indent = { enable = true }
}
