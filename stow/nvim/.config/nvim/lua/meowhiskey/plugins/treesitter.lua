return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    version = false,
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.config")

        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query", "elixir", "heex",
                "javascript", "html", "cpp", "bash", "asm", "make", "cmake",
                "gitignore", "gitcommit", "gitattributes", "git_rebase", "git_config"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
