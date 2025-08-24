-- UI stuff
vim.wo.relativenumber = true
vim.wo.rnu = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.wrap = true
vim.opt.textwidth = 79
vim.opt.expandtab = true
vim.opt.colorcolumn = "79"

vim.cmd[[colorscheme onedark_dark]]

-- Insert mode stuff
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Normal Mode stuff
vim.keymap.set("n", "<tab>", "gt")
vim.keymap.set("n", "<S-tab>", "gT")

-- Telescope-file-sittter stuff
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<C-n>", ":Telescope file_browser<CR>")

require("telescope").setup {
  defaults = {
    sorting_strategy = "ascending",
    initial_mode = "normal"
  },
  extensions = {
    file_browser = {
      mappings = {
        ["n"] = {
          ["<CR>"] = require("telescope.actions").select_tab,
        },
      },
    },
  },
}

require("telescope").load_extension "file_browser"

-- toggle-term stuff
require("toggleterm").setup{
  open_mapping = [[<leader>t]],
  direction = "tab",
}

