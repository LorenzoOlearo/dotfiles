return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python', --optional
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  lazy = false,
  branch = 'regexp', -- This is the regexp branch, use this for the new version
  config = function()
    require('venv-selector').setup()
  end,
  keys = {
    { ',v', '<cmd>VenvSelect<cr>' },
  },
}

-- return {
--   'linux-cultist/venv-selector.nvim',
--   dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python', 'mfussenegger/nvim-dap' },
--   opts = {
--     -- Your options go here
--     -- name = "venv",
--     auto_refresh = true,
--     dap_enabled = true,
--     path = '~/Documents/python-envs/diffusion/bin/python',
--     settings = {
--       search = {
--         find_code_venvs = {
--           command = 'fd /bin/python$ ~/Code --full-path',
--         },
--         find_programming_venvs = {
--           command = 'fd /bin/python$ ~/Documents/python-envs/ --full-path -IHL -E /proc',
--         },
--       },
--     },
--     branch = 'regexp',
--     event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
--     keys = {
--       -- Keymap to open VenvSelector to pick a venv.
--       { '<leader>tv', '<cmd>VenvSelect<cr>' },
--       -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
--       { '<leader>tvc', '<cmd>VenvSelectCached<cr>' },
--     },
--   },
-- }

-- return {
--   'linux-cultist/venv-selector.nvim',
--   dependencies = {
--     'neovim/nvim-lspconfig',
--     'mfussenegger/nvim-dap',
--     'mfussenegger/nvim-dap-python',
--     { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
--   },
--   lazy = false,
--   branch = 'regexp', -- This is the regexp branch, use this for the new version
--   config = function()
--     require('venv-selector').setup {
--       settings = {
--         search = {
--           find_code_venvs = {
--             command = 'fd /bin/python$ ~/Code --full-path',
--           },
--           find_programming_venvs = {
--             command = 'fd /bin/python$ ~/Documents/python-envs/ --full-path -IHL -E /proc',
--           },
--         },
--       },
--     }
--   end,
--   keys = {
--     { ',v', '<cmd>VenvSelect<cr>' },
--   },
-- }
