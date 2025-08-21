return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.buttons.val = {
      dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '󰱼  Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
      dashboard.button('p', '  Projects', ':Telescope projects<CR>'),
      dashboard.button('c', '  Config', ':e $MYVIMRC<CR>'),
      dashboard.button('q', '󰿅  Quit', ':qa<CR>'),
    }
    dashboard.section.header.val = {
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
    }

    -- Optional: footer still works
    dashboard.section.footer.val = '⚡ Neovim loaded ' .. require('lazy').stats().count .. ' plugins'

    alpha.setup(dashboard.opts)
  end,
}
