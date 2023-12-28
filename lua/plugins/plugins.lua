local M = {}

M.Plugins = {
  {
    "williamboman/mason.nvim"
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons'}
  },
  { 'nvim-treesitter/nvim-treesitter' },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
    "nvim-tree/nvim-web-devicons",
    }
  },
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    }
  },
  { 'm4xshen/autoclose.nvim' },
  { "windwp/nvim-ts-autotag" },
  { 'andweeb/presence.nvim' },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason-lspconfig" },
  {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },
    { 'norcalli/nvim-colorizer.lua' },
    {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  { 'simrat39/rust-tools.nvim' },
  { "tpope/vim-fugitive" },
  { 'eddyekofo94/gruvbox-flat.nvim'},
  { "sainnhe/gruvbox-material" },
  {"morhetz/gruvbox"},
  {'navarasu/onedark.nvim'}
}

return M
