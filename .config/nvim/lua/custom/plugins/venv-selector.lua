return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"sharkdp/fd",
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python", --optional
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	opts = {
		auto_refresh = true,
		dap_enabled = true,
		name = "flows",
		search_workspace = false,
		search = true,
		parents = 5,
		notify_user_on_activate = true,
		debug = true,
		options = {
			on_venv_activate_callback = nil, -- callback function for after a venv activates
			enable_default_searches = true, -- switches all default searches on/off
			enable_cached_venvs = true, -- use cached venvs that are activated automatically when a python file is registered with the LSP.
			cached_venv_automatic_activation = true, -- if set to false, the VenvSelectCached command becomes available to manually activate them.
			activate_venv_in_terminal = true, -- activate the selected python interpreter in terminal windows opened from neovim
			set_environment_variables = true, -- sets VIRTUAL_ENV or CONDA_PREFIX environment variables
			notify_user_on_venv_activation = true, -- notifies user on activation of the virtual env
			search_timeout = 5, -- if a search takes longer than this many seconds, stop it and alert the user
			debug = true, -- enables you to run the VenvSelectLog command to view debug logs
			require_lsp_activation = true, -- require activation of an lsp before setting env variables

			-- telescope viewer options
			on_telescope_result_callback = nil, -- callback function for modifying telescope results
			show_telescope_search_type = true, -- shows which of the searches found which venv in telescope
			telescope_filter_type = "substring", -- when you type something in telescope, filter by "substring" or "character"
		},
	},
	lazy = false,
	branch = "main",
	config = function()
		local home = os.getenv("HOME") or vim.fn.expand("~")

		-- Detect which fd command is available
		local fd_cmd = "fd"
		if vim.fn.executable("fdfind") == 1 then
			fd_cmd = "fdfind"
		elseif vim.fn.executable("fd") == 1 then
			fd_cmd = "fd"
		end

		require("venv-selector").setup({
			settings = {
				search = {
					my_venv = {
						command = fd_cmd .. ' -E .git -E node_modules "python3" ' .. home .. ' | grep "/bin/"',
					},
				},
			},
		})
	end,
	keys = {
		{ "<leader>sv", "<cmd>VenvSelect<CR>", desc = "[S]earch [V]env" },
	},
}
