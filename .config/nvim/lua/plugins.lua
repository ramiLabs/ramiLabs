local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    print("downloading packer")
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'nvim-telescope/telescope.nvim', branch = '0.1.x'}
    use {'projekt0n/github-nvim-theme', branch = 'main'}
    use {'srcery-colors/srcery-vim', as = 'srcery'}
    use {'nyoom-engineering/oxocarbon.nvim'}
    ----------------------------------
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          "MunifTanjim/nui.nvim",
        }
    }
    use 'simrat39/symbols-outline.nvim'
    use {'neovim/nvim-lspconfig'}
    use {'TimUntersberger/neogit'}
    use {'sindrets/diffview.nvim'}
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
