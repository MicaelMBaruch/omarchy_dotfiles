require("config.remote_clipboard").setup()
vim.g.mapleader = ' '

-- OPTIONS
-- Numbers column
vim.o.number = true -- Show line numbers in a column.
vim.o.relativenumber = true

-- Tab behaviour
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = -1

-- Spell behaviour
vim.o.spell = true
vim.o.spelllang = "pt_br,en"

--  File handling
vim.o.undofile = true -- persistent undo
vim.o.confirm = true -- confirm save before closing

-- Sync clipboard between OS and Neovim.
vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})

-- Searching behaviour
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true -- Highlight the line where the cursor is on.
vim.o.scrolloff = 10 -- Keep this many screen lines above/below the cursor.
vim.o.list = true -- Show <tab> and trailing spaces.

