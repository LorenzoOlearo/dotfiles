-- LaTeX: vimtex does compile (latexmk), view, errors, syntax, motions.
-- Build menu lives under <leader>m (tex buffers only).

-- Run biber if the document uses biblatex (.bcf exists), else bibtex.
local function bib()
	local root = vim.fn.eval("b:vimtex.root")
	local name = vim.fn.fnamemodify(vim.fn.eval("b:vimtex.tex"), ":t:r")
	local tool = vim.uv.fs_stat(root .. "/" .. name .. ".bcf") and "biber" or "bibtex"
	vim.cmd("!cd " .. vim.fn.shellescape(root) .. " && " .. tool .. " " .. vim.fn.shellescape(name))
end

return {
	"lervag/vimtex",
	-- ponytail: pinned, vimtex master needs nvim >= 0.12.4; unpin after upgrading nvim
	version = "v2.18",
	lazy = false, -- vimtex docs: must not be lazy-loaded
	keys = {
		{ "<leader>mc", "<cmd>VimtexCompile<cr>", ft = "tex", desc = "[C]ompile (continuous, toggle)" },
		{ "<leader>mo", "<cmd>VimtexCompileSS<cr>", ft = "tex", desc = "Compile [o]nce" },
		{ "<leader>mb", bib, ft = "tex", desc = "[B]ibliography (biber/bibtex)" },
		{ "<leader>mv", "<cmd>VimtexView<cr>", ft = "tex", desc = "[V]iew PDF" },
		{ "<leader>me", "<cmd>VimtexErrors<cr>", ft = "tex", desc = "[E]rrors" },
		{ "<leader>mk", "<cmd>VimtexStop<cr>", ft = "tex", desc = "[K]ill compiler" },
		{ "<leader>mx", "<cmd>VimtexClean<cr>", ft = "tex", desc = "Clean au[x] files" },
		{ "<leader>mt", "<cmd>VimtexTocToggle<cr>", ft = "tex", desc = "[T]able of contents" },
	},
}
