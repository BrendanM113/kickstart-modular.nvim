-- tailwind-tools.lua
-- DISABLED: Plugin archived and causes lspconfig deprecation warnings
-- You have tailwindcss LSP already configured in kickstart/plugins/lspconfig.lua
return {
  'luckasRanarison/tailwind-tools.nvim',
  enabled = false,
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    require('tailwind-tools').setup {
      -- your configuration
    }
  end,
}
