return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files: lists files in cwd, respects .gitignore" },
        { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Git files: fuzzy search through git ls-files" },
        { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Find String: search for string under cursor/selection in cwd" },
        { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Find Live via (rip)grep: search for a string in cwd, get results live as typed" },
    },
    opts = {
        pickers = {
            find_files = { theme = "ivy" },
            git_files = {
                theme = "dropdown",
                layout_config = { width = 0.5 }
            },
            grep_string = {
                theme = "cursor",
                layout_config = {
                    width = { 0.6, max = 200 }
                }
            },
            live_grep = {
                theme = "dropdown",
                layout_config = { width = 0.8 }
            }
        },
    },
    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)
        telescope.load_extension("fzf")
    end
}
