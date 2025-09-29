return {

  'rhysd/git-messenger.vim',
  cmd = 'GitMessenger',
  keys = {
    { '<Leader>gm', '<Plug>(git-messenger)', desc = '[G]it [M]essenger: reveal commit under cursor' },
  },
  init = function()
    vim.g.git_messenger_include_diff = 'current'
    vim.g.git_messenger_no_default_mappings = false
    vim.g.git_messenger_floating_win_opts = { border = 'rounded' }
    vim.g.git_messenger_always_into_popup = true
  end,
}
