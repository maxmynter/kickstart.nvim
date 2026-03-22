return {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    mappings = true,
  },
  config = function(_, opts)
    require('lean').setup(opts)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'lean',
      callback = function(event)
        require('which-key').add({
          { '<localleader>i', desc = 'Toggle infoview', buffer = event.buf },
          { '<localleader>p', desc = 'Pause infoview', buffer = event.buf },
          { '<localleader>r', desc = 'Restart Lean server', buffer = event.buf },
          { '<localleader>v', desc = 'Configure infoview options', buffer = event.buf },
          { '<localleader>x', desc = 'Place infoview pin', buffer = event.buf },
          { '<localleader>c', desc = 'Clear all infoview pins', buffer = event.buf },
          { '<localleader>d', group = 'Diff pin', buffer = event.buf },
          { '<localleader>dx', desc = 'Place infoview diff pin', buffer = event.buf },
          { '<localleader>dc', desc = 'Clear infoview diff pin', buffer = event.buf },
          { '<localleader>dd', desc = 'Toggle auto diff pin mode', buffer = event.buf },
          { '<localleader>dt', desc = 'Toggle auto diff pin (keep pin)', buffer = event.buf },
          { '<localleader><tab>', desc = 'Jump to infoview window', buffer = event.buf },
          { '<localleader>\\', desc = 'Show abbreviation for symbol', buffer = event.buf },
        })
      end,
    })
  end,
}
