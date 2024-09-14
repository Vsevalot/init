require("vsevalot.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"  -- ask for data directory and add lazy
if not vim.loop.fs_stat(lazypath) then -- if there is no such directory - create one with repo
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)  -- add lazypath to the first directory for plugin search
--         ^ : is just a fancy way to call objects methods
-- It is a shortcut for vim.opt.rtp.prepend(vim.opt.rtp, lazypath)


vim.g.have_nerd_font = true


-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})


require("lazy").setup({
    unpack(require("vsevalot.plugins")),
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
