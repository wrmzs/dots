
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	    vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(us)
	use 'wbthomason/packer.nvim'

    use 'axvr/photon.vim'
    use 'owickstrom/vim-colors-paramount'

    use 'NvChad/nvim-colorizer.lua'

	use 'neovim/nvim-lspconfig'

	use {
		'ms-jpq/coq_nvim',
		branch = 'coq',
		requires = {
			{
				'ms-jpq/coq.artifacts',
				branch = 'artifacts'
			},
			{
				'ms-jpq/coq.thirdparty',
				branch = '3p'
			}
		}
	}
end)

