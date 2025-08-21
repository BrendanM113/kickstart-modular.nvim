-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
  },
  opts = {
    window = {
      position = 'float',
      popup = {
        size = {
          height = '80%', -- can be a percentage or number of rows
          width = '60%',
        },
        position = '50%', -- center it in the screen
      },
    },
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_hidden = true,
      },
    },
  },
}
