require("mokou")

local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
	local configs = require("nvim-treesitter.configs")

	configs.setup({
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "cpp", "bash", "asm", "make", "cmake" },
		sync_install = false,
		auto_install = false,
		ignore_install = {},
		highlight = { enable = true },
		indent = { enable = true },
	})
	end
},
{
	"nvim-telescope/telescope.nvim", branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" }
},
{
	"nvim-telescope/telescope-fzf-native.nvim",
	build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
}})

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

