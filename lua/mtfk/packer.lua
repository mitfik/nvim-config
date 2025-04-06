vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use( 'nvim-treesitter/playground')
  use( 'ThePrimeagen/harpoon' )
  use 'mbbill/undotree'
  use( 'tpope/vim-fugitive')
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},     -- Required
          {'hrsh7th/cmp-nvim-lsp'}, -- Required
          {'L3MON4D3/LuaSnip'},     -- Required
      }
  }
  use { 'https://github.com/github/copilot.vim' }
  use { 'https://github.com/lewis6991/gitsigns.nvim.git' }
  use ({
      'nvimdev/lspsaga.nvim',
      after = 'nvim-lspconfig',
      config = function()
          require('lspsaga').setup({})
      end,
      requires = {
          -- Icons
          {'nvim-tree/nvim-web-devicons'}, -- Required
      }
  })
  use 'prettier/vim-prettier'

  use {
  'nvim-orgmode/orgmode',
  ft = 'org',
  config = function()
    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
      org_todo_keywords = { 'TODO(t)', 'WIP(w)', '|', 'DONE(d)' },
    })
  end
}






end)
