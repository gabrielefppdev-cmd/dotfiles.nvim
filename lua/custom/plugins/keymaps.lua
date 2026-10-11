-- Oil
vim.keymap.set('n', '-', '<Cmd>Oil<CR>', { desc = 'Open parent directory' })

-- Telescope
local telescope = require 'telescope.builtin'
local hidden_args = { '--hidden', '--glob', '!**/.git/*' }

vim.keymap.set(
  'n',
  '<leader>sF',
  function() telescope.find_files { find_command = { 'rg', '--files', unpack(hidden_args) } } end,
  { desc = '[S]earch [F]iles incl. hidden' }
)
vim.keymap.set('n', 
  '<leader>sG', 
  function() telescope.live_grep { additional_args = hidden_args } end, 
  { desc = '[S]earch by [G]rep incl. hidden' }
)
