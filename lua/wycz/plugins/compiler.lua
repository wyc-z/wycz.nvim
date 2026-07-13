vim.pack.add {
  'https://github.com/Zeioth/compiler.nvim',
  'https://github.com/stevearc/overseer.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
}
require('overseer').setup {
  task_list = {
    direction = 'bottom',
    min_height = 5,
    max_height = 25,
    default_detail = 1,
  },
}

require('compiler').setup {}

-- Open compiler
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>CompilerOpen<cr>', { noremap = true, silent = true })

-- Redo last selected option
vim.api.nvim_set_keymap(
  'n',
  '<F3>',
  '<cmd>CompilerStop<cr>' -- (Optional, to dispose all tasks before redo)
    .. '<cmd>CompilerRedo<cr>',
  { noremap = true, silent = true }
)

-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<F7>', '<cmd>CompilerToggleResults<cr>', { noremap = true, silent = true })
