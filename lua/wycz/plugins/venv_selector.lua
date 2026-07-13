vim.pack.add {
  'https://github.com/linux-cultist/venv-selector.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
}

require('venv-selector').setup {
  options = {}, -- plugin-wide options
  search = {}, -- custom search definitions
}

vim.keymap.set('n', ',v', '<cmd>VenvSelect<CR>', {
  desc = 'Seleccionar entorno virtual',
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.keymap.set('n', ',v', '<cmd>VenvSelect<CR>', {
      buffer = true,
      desc = 'Seleccionar entorno virtual',
    })
  end,
})
