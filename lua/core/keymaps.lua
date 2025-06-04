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
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzv")
map("x", "<leader>p", "\"_dp")
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+Y")
--make executable
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})

-- telescope bindings
local builtin = require('telescope.builtin')
map("n", "<leader>pf", builtin.find_files, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fg", builtin.live_grep, {})
