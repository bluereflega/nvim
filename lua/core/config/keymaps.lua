local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- move to previous/next buffer
map("n", "<M-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<M-.>", "<Cmd>BufferNext<CR>", opts)

-- re-order buffer to previous/next
-- TODO: these don't work for some reason
map("n", "<M-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<M->>", "<Cmd>BufferMoveNext<CR>", opts)

-- pin/unpin buffer
map("n", "<M-p>", "<Cmd>BufferPin<CR>", opts)

-- close buffer
map("n", "<M-c>", "<Cmd>Bdelete<CR>", opts)

-- magic buffer picker
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
