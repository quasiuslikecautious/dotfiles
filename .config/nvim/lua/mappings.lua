function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

---------------------------------------- normal mode ----------------------------------------------
-- General
map("n", ";", ":", { silent = true })
map("n", "<leader>x", "<cmd>bd<CR>", { silent = true })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { silent = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { silent = true })
map("n", "<leader>ft", "<cmd>Telescope buffers<CR>", { silent = true })
map("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", { silent = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { silent = true })
map("n", "<leader>th", "<cmd>Telescope colorscheme<CR>", { silent = true })

-- Harpoon
map("n", "<leader>mf", '<cmd>Telescope harpoon marks<CR>', { silent = true })
map("n", "<leader>m", '<cmd>lua require("harpoon.mark").add_file()<CR>', { silent = true })
map("n", "<leader>mn", '<cmd>lua require("harpoon.ui").nav_next()<CR>', { silent = true })
map("n", "<leader>mN", '<cmd>lua require("harpoon.ui").nav_prev()<CR>', { silent = true })
map("n", "<leader>mt", '<cmd>lua require("harpoon.tmux").gotoTerminal(1)<CR>', { silent = true })

-- Comment
map("n", "<leader>/", '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>')

--------------------------------------- visual mode -----------------------------------------------
-- Comment
map("v", "<leader>/", '<cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

--------------------------------------- insert mode -----------------------------------------------
map("i", "jk", "<Esc>", { silent = true })
