return {
  'lervag/vimtex',
  ft = { 'tex', 'plaintex' }, -- lazy-load properly
  init = function()
    -- VimTeX settings
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_view_skim_sync = 0
    vim.g.vimtex_view_skim_activate = 1
    vim.g.vimtex_mappings_enabled = 1
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '
    vim.g.vimtex_indent_enabled = 0
    vim.g.tex_flavor = 'latex'
    vim.g.tex_indent_items = 1
    vim.g.tex_indent_brace = 0
    vim.g.vimtex_context_pdf_viewer = 'skim'
    -- vim.g.vimtex_view_sioyeik_exe = "sioyek"
    vim.g.vimtex_log_ignore = {
      'Underfull',
      'Overfull',
      'specifier changed to',
      'Token not allowed in a PDF string',
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'tex',
      callback = function()
        vim.keymap.set('i', '<CR>', function()
          local line = vim.fn.getline '.'
          if line:match '^%s*\\item' then
            return '<CR>\\item '
          else
            return '<CR>'
          end
        end, { expr = true, buffer = true })
      end,
    })
    vim.g.vimtex_compiler_latexmk = {
      build_dir = 'out', -- for example
    }
    -- Disable Treesitter highlighting for LaTeX if needed
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'tex',
      callback = function()
        vim.cmd 'TSBufDisable highlight'
      end,
    })
  end,
}
