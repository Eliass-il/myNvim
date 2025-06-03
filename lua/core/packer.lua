-- packer.lua
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- UI
    use "nvim-lualine/lualine.nvim"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"

    -- Telescope
    use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }

    -- Treesitter
    use ( 'nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- Autocomplete
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    -- Maven
    use "mfussenegger/nvim-jdtls"

    if packer_bootstrap then
        require("packer").sync()
    end
end)
