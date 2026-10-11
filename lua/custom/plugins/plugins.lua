vim.pack.add { 'https://github.com/Bekaboo/dropbar.nvim' }
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

require('mini.indentscope').setup()
require('mini.move').setup()
require('mini.pairs').setup()
require('mini.sessions').setup { autoread = true }
require('oil').setup {
  view_options = { show_hidden = true }, -- show dotfiles; toggle with g.
}

vim.keymap.set('n', '-', '<Cmd>Oil<CR>', { desc = 'Open parent directory' })
