return {
  -- package recommended by https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion/217feffc675a17d8ab95259ed9d4c6d62e1cd2e1#autocompletion-not-built-in-vs-completion-built-in
  "hrsh7th/nvim-cmp",
  config = function(cmp)
    local cmp = require("cmp")
    cmp.setup({
      completion = { completeopt = "menu,menuone,noinsert" },
      -- if desired, choose another keymap-preset:
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      -- optionally, add more completion-sources:
      sources = cmp.config.sources({ { name = "nvim_lsp" } }),
    })
  end,
}
