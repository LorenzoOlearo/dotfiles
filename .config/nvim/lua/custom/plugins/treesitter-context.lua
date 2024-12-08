return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    require('treesitter-context').setup {
      enable = true, -- Enable this plugin
      multiwindow = false, -- Enable multiwindow support
      max_lines = 0, -- No limit on context lines by default
      min_window_height = 0, -- No minimum window height required
      line_numbers = true, -- Show line numbers
      multiline_threshold = 20, -- Max lines to show for a single context
      trim_scope = 'outer', -- Discard outer context lines if max_lines exceeded
      mode = 'cursor', -- Use cursor line to calculate context
      separator = nil, -- No separator by default
      zindex = 20, -- Z-index of context window
      on_attach = nil, -- Default on_attach behavior
    }
  end,
}
