return {
  'norcalli/nvim-colorizer.lua',
  enabled = false,
  config = function()
    require('colorizer').setup {
      '*',
      css = { rgb_fn = true },
    }
  end,
}
