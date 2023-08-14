local lsp = require('lsp-zero')
lsp.preset({
  'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
})

cmp.setup({
  select_behavior = 'insert',
  mapping = cmp_mappings,
})

lsp.setup()
