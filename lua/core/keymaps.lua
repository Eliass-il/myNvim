local map = vim.keymap.set
map("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
map("n", "<leader>pv", vim.cmd.Ex)

map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>pf", ":Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>mi", function() vim.cmd("terminal mvn install")end)
map("n", "<leader>mp", function() vim.cmd("terminal mvn package")end)
map("n", "<leader>mr", function() vim.cmd("terminal mvn spring-boot:run")end)
map("n", "<leader>ms", function() vim.cmd("terminal mvn spring-boot:stop")end)
map("n", "<Space>", "<Nop>", { silent = true })
