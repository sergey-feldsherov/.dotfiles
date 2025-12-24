local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- disable netrw Ctrl+l keymap (refreshing directory)
-- since it does not allow using tmux.nvim keymap to function
-- correctly, map it to ctrl+W
-- not ctrl+e because it is used in normal mode to scroll down by 1 line
map("n", "<C-W>", "<Plug>NetrwRefresh")

map("n", "<leader>w", "<CMD>update<CR>")

map("n", "<leader>q", "<CMD>q<CR>")

map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")
