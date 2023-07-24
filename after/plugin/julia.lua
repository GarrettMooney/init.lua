-- Slime
vim.g.slime_target = "tmux"
vim.g.slime_cell_delimiter = "#%%"
vim.g.slime_dont_ask_default = 1
vim.g.slime_bracketed_paste = 1
vim.g.slime_no_mappings = 1
vim.g.slime_default_config = {
    socket_name = vim.api.nvim_eval('get(split($TMUX, ","), 0)'),
    target_pane = '{last}',
}

-- create '#%%' line above the current line
vim.api.nvim_set_keymap('n', '<leader>;', [[:normal! O#%%<CR> j]], { noremap = true, silent = true })
-- run cell
vim.api.nvim_set_keymap('n', '<leader>r', '<Plug>SlimeSendCell', {})
