#!/bin/sh
# 需要自行修改,这是针对MacOS的

echo "Begin to install..."

# 可自定义修改
LIU_NVIM_PATH="https://github.com/bigfoolliu/liu_nvim.git"
NVIM_DOWNLOAD_PATH="/Users/liu/Desktop/liu/tools/"
NVIM_VERSION="nvim-linux64"
NVIM_PATH="${NVIM_DOWNLOAD_PATH}/bin"

# 下载neovim
cd $NVIM_DOWNLOAD_PATH
wget https://github.com/neovim/neovim/releases/download/v0.7/${NVIM_VERSION}.tar.gz
tar -xvf ~/${NVIM_VERSION}.tar.gz

# 克隆项目(当然已经下载好了.)
cd ~/.config/
git clone --depth 1 $LIU_NVIM_PATH

# 修改可执行文件的路径
echo "export PATH=${NVIM_PATH}:\$PATH" >> ~/.zshrc
source ~/.zshrc

# 下载使用packer插件管理
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# 下载其他插件
cd ~/.local/share/nvim/site/pack/packer/start
git clone --depth 1 https://github.com/Pocco81/AutoSave.nvim
git clone --depth 1 https://github.com/numToStr/Comment.nvim
git clone --depth 1 https://github.com/rmagatti/auto-session
git clone --depth 1 https://github.com/famiu/bufdelete.nvim
git clone --depth 1 https://github.com/akinsho/bufferline.nvim
git clone --depth 1 https://github.com/catppuccin/nvim
git clone --depth 1 https://github.com/hrsh7th/cmp-buffer
git clone --depth 1 https://github.com/hrsh7th/cmp-cmdline
git clone --depth 1 https://github.com/hrsh7th/cmp-nvim-lsp
git clone --depth 1 https://github.com/hrsh7th/cmp-path
git clone --depth 1 https://github.com/f3fora/cmp-spell
git clone --depth 1 https://github.com/tzachar/cmp-tabnine
git clone --depth 1 https://github.com/lukas-reineke/cmp-under-comparator
git clone --depth 1 https://github.com/hrsh7th/cmp-vsnip
git clone --depth 1 https://github.com/rafamadriz/friendly-snippets
git clone --depth 1 https://github.com/phaazon/hop.nvim
git clone --depth 1 https://github.com/ray-x/lsp_signature.nvim
git clone --depth 1 https://github.com/onsails/lspkind-nvim
git clone --depth 1 https://github.com/tami5/lspsaga.nvim
git clone --depth 1 https://github.com/nvim-lualine/lualine.nvim
git clone --depth 1 https://github.com/windwp/nvim-autopairs
git clone --depth 1 https://github.com/hrsh7th/nvim-cmp
git clone --depth 1 https://github.com/norcalli/nvim-colorizer.lua
git clone --depth 1 https://github.com/kevinhwang91/nvim-hlslens
git clone --depth 1 https://github.com/ethanholz/nvim-lastplace
git clone --depth 1 https://github.com/williamboman/nvim-lsp-installer
git clone --depth 1 https://github.com/neovim/nvim-lspconfig
git clone --depth 1 https://github.com/petertriho/nvim-scrollbar
git clone --depth 1 https://github.com/kyazdani42/nvim-tree.lua
git clone --depth 1 https://github.com/kyazdani42/nvim-web-devicons
git clone --depth 1 https://github.com/navarasu/onedark.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim
git clone --depth 1 https://github.com/nvim-telescope/telescope.nvim
git clone --depth 1 https://github.com/ur4ltz/surround.nvim
git clone --depth 1 https://github.com/AndrewRadev/switch.vim
git clone --depth 1 https://github.com/nvim-telescope/telescope.nvim
git clone --depth 1 https://github.com/folke/todo-comments.nvim
git clone --depth 1 https://github.com/airblade/vim-gitgutter
git clone --depth 1 https://github.com/mhinz/vim-startify
git clone --depth 1 https://github.com/hrsh7th/vim-vsnip
git clone --depth 1 https://github.com/yianwillis/vimcdoc

echo "install done."

# 使用
nvim

