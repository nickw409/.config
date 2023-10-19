local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Delete word backwards
keymap.set('n', 'dw', 'vb"_d')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Close tab
keymap.set('n', 'tc', ':tabclose')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move windows
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Move tab
keymap.set('n', '<Tab>', ':tabnext<Return>')
keymap.set('n', '<S-Tab>', ':tabprev<Return>')
