-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
require("lazy").setup({

	require("custom/plugins/monokai-pro"),

	require("custom/plugins/vim-tmux-navigator"),

	require("custom/plugins/comments"),

	require("custom/plugins/treesitter-context"),

	-- require 'custom/plugins/copilot',

	require("custom/plugins/venv-selector"),

	require("custom/plugins/lazygit"),

	require("custom/plugins/snacks"),

	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	-- NOTE: Kickstart base packages:
	require("custom/plugins/gitsigns"),

	require("custom/plugins/which-key"),

	require("custom/plugins/telescope"),

	require("custom/plugins/lspconfig"),

	require("custom/plugins/conform"),

	require("custom/plugins/cmp"),

	require("custom/plugins/todo-comments"),

	require("custom/plugins/mini"),

	require("custom/plugins/treesitter"),

	"voldikss/vim-floaterm",

	require("custom.plugins.debug"),
	-- require 'custom.plugins.indent_line',
	-- require 'custom.plugins.lint',
	-- require 'custom.plugins.autopairs',
	require("custom.plugins.neo-tree"),
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
