require("harpoon.mark")
require("harpoon.ui")
local map = vim.keymap.set
map("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
map("n", "<leader>pv", vim.cmd.Ex)

map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>mi", function() vim.cmd("terminal mvn install")end)
map("n", "<leader>mp", function() vim.cmd("terminal mvn package")end)
map("n", "<leader>mr", function() vim.cmd("terminal mvn spring-boot:run")end)
map("n", "<leader>ms", function() vim.cmd("terminal mvn spring-boot:stop")end)
map("n", "<Space>", "<Nop>", { silent = true })


-- telescope bindings
local builtin = require('telescope.builtin')
map("n", "<leader>pf", builtin.find_files, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fg", builtin.live_grep, {})

-- harpoon bindings
map("n", "<leader>a", mark.add_file)
map("n", "<C-e>", ui.toggle_quick_menu)
map("n", "<C-h>", function() ui.nav_file(1) end)
