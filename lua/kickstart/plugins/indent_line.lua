return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},

    config = function()
      require('ibl').setup {
        exclude = { filetypes = { 'dashboard ' } },
        indent = { char = '▎' },
        whitespace = { highlight = { 'Whitespace' } },
        scope = {
          show_start = false,
          show_end = false,
        },
      }
    end,

    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
  },
}
