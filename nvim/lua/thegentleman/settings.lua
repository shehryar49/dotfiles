local global = vim.g
local o = vim.opt

-- Editor options

o.number = true -- Print the line number in front of each line
o.syntax = "on" -- When this option is set, the syntax with this name is loaded.
o.autoindent = true -- Copy indent from current line when starting a new line.
o.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
o.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for.
o.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
o.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
o.title = true -- When on, the title of the window will be set to the value of 'titlestring'
o.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.foldcolumn = '1' -- '0' is not bad
o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
o.foldlevelstart = 99
o.foldenable = true
o.clipboard = "unnamedplus"

vim.diagnostic.config({ virtual_text = false })
vim.keymap.set("n", "<space>d", ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>", { desc = "Show line diagnostics" })
--vim.api.nvim_buf_set_option('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>' { noremap=true, silent=true })
