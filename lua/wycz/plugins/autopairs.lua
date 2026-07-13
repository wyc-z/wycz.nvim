-- autopairs
-- https://github.com/windwp/nvim-autopairs
vim.pack.add {
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/windwp/nvim-ts-autotag',
  'https://github.com/windwp/nvim-autopairs',
}
require('nvim-treesitter.config').setup {
  ensure_installed = {
    'html',
    'css',
    'javascript',
    'typescript',
    'tsx',
  },
  highlight = {
    enable = true,
  },
}
require('nvim-autopairs').setup {}
require('nvim-ts-autotag').setup()
