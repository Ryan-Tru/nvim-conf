-- UI stuff
vim.wo.relativenumber = true
vim.wo.rnu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.wrap = true
vim.opt.textwidth = 79
vim.opt.expandtab = true
vim.opt.colorcolumn = "79"

vim.cmd[[colorscheme peachpuff]]

-- Insert mode stuff
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Normal Mode stuff
vim.keymap.set("n", "<tab>", "gt")
vim.keymap.set("n", "<S-tab>", "gT")
vim.keymap.set("n", "<leader>x", ":close<CR>")
vim.keymap.set("n", "<leader>cs", ":Telescope colorscheme<CR>")

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
  pickers = {
    colorscheme = {
      enable_preview = true,
    }
  }
}

require("telescope").load_extension "file_browser"

-- toggle-term stuff
require("toggleterm").setup{
  open_mapping = [[<leader>t]],
  direction = "tab",
}


-- ALE stuff
vim.g.ale_virtualtext_cursor = 0
vim.g.ale_warn_about_trailing_blank_lines = false
vim.g.ale_warn_about_trailing_whitespace = false

-- ALE cpp stuff
vim.g.ale_cpp_cpplint_options = '--filter=-legal/copyright,-whitespace/indent'
