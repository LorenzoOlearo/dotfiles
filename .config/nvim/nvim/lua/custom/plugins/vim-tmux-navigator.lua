return {
  'christoomey/vim-tmux-navigator',
  lazy = false,
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', 'window left' },
    { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>', 'windows right' },
    { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>', 'window down' },
    { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>', 'window right' },
    { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
  },
}
