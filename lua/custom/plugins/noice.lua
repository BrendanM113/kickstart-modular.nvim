-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    lsp = {
      -- Override LSP hover and signature to prevent automatic popups
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
      hover = {
        enabled = true,
        silent = true, -- Don't show "No information available" messages
      },
      signature = {
        enabled = true,
        auto_open = {
          enabled = false, -- Disable automatic signature help popups
        },
      },
    },
  },
  keys = {
    -- Trigger Noice hover documentation with <leader>nh
    {
      '<leader>nh',
      function()
        require('noice.lsp').hover()
      end,
      desc = '[N]oice [H]over documentation',
    },
    -- Trigger Noice signature help with <leader>ns
    {
      '<leader>ns',
      function()
        require('noice.lsp').signature()
      end,
      desc = '[N]oice [S]ignature help',
    },
    -- Toggle automatic signature help
    {
      '<leader>ta',
      function()
        local noice_config = require('noice.config')
        local current = noice_config.options.lsp.signature.auto_open.enabled
        noice_config.options.lsp.signature.auto_open.enabled = not current
        if noice_config.options.lsp.signature.auto_open.enabled then
          print("Noice auto-signature enabled")
        else
          print("Noice auto-signature disabled")
        end
      end,
      desc = '[T]oggle [A]uto-signature help',
    },
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- 'rcarriga/nvim-notify',
  },
}
