set = vim.keymap.set

-- Use <Esc> to exit terminal mode
set('t', '<Esc>', '<C-\\><C-n>')

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
set({ 'n' }, '<A-h>', '<C-w>h')
set({ 'n' }, '<A-j>', '<C-w>j')
set({ 'n' }, '<A-k>', '<C-w>k')
set({ 'n' }, '<A-l>', '<C-w>l')

-- Move windows around
set({ 'n', 't' }, '<C-h>', '<C-w><S-h>')
set({ 'n', 't' }, '<C-j>', '<C-w><S-j>')
set({ 'n', 't' }, '<C-k>', '<C-w><S-k>')
set({ 'n', 't' }, '<C-l>', '<C-w><S-l>')

-- Basic save and quit, Lazy
set({ 'n' }, '<leader>w', '<CMD>w<CR>', {desc="Save current Buffer"})
set({ 'n' }, '<leader>q', '<CMD>q<CR>', {desc="Close current Buffer"})


-- -- Jump over closing pairs ) ] }
-- local function move_past_closing()
--   -- Get the current cursor position (1-indexed row, 0-indexed col)
--   local row, col = unpack(vim.api.nvim_win_get_cursor(0))
--   -- Get the current line text
--   local line = vim.api.nvim_get_current_line()
--   -- Get the character immediately after the cursor
--   local line_ahead = string.sub(line, col+1)
--   -- Define the pattern of target characters
--   local pattern = '[]})\'\"]'
--   local nopattern = '[][[{(]'
--   -- Check for a match and advance the cursor two spaces if true
--   if string.match(line_ahead, pattern) then
--       if string.match(line_ahead, nopattern) then
--           return
--       end
--     vim.api.nvim_win_set_cursor(0, { row, col + 2 })
--   end
-- end
-- set({ 'i' }, '<tab>', move_past_closing)


-- Plugin related
--
--
-- LuaSnips
local ls = require("luasnip")
set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})


-- Oil.nvim (navigator)
set("n", "<leader>e",function() require("oil").open() end, {desc="oil file explorer"})


-- Lazy
set({ 'n' }, '<leader>l', '<CMD>Lazy<CR>')


-- Mason
set({ 'n' }, '<leader>m', '<CMD>Mason<CR>')


-- Typst
local function git_root()
    -- Procura pela pasta .git subindo nos diretórios
    local git_dir = vim.fn.finddir(".git", ";")
    -- Retorna o caminho do diretório pai (o root)
    return vim.fn.fnamemodify(git_dir, ":h")
end

local function typst_watch()
    vim.cmd("vsp")
    vim.cmd("vertical resize 20")

    -- Executa o terminal concatenando com a função GitRoot() global do Vim e o arquivo atual
    local current_file = vim.fn.expand("%:")
    vim.cmd("terminal typst watch --root " .. git_root() .. " " .. current_file)

    -- Volta para a janela da esquerda
    vim.cmd([[norm \<body><c-w>h]])
end

-- Atalho para chamar a função TypstWatch
vim.keymap.set("n", "<leader>tw", typst_watch, { silent = true, desc="TypstWatch"})

-- Atalho para abrir o Zathura em background
vim.keymap.set("n", "<leader>tz", function()
    local pdf_path = vim.fn.expand("%:p:r") .. ".pdf"
    vim.cmd("silent exec '!zathura --fork " .. pdf_path .. " &'")
end, { silent = true, desc="openzathura on %"})

---- Tinymist
set({'n'}, '<leader>tp', '<CMD>TypstPreviewToggle<CR>')
