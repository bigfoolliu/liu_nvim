# nvim主目录

[toc]

## 1.参考内容以及帮助

- [知乎:neovim IDE 搭建系列](https://zhuanlan.zhihu.com/p/469355805)
- [在 neovim 中使用 Lua](https://github.com/glepnir/nvim-lua-guide-zh)
- [neovim官方帮助文档](https://neovim.io/doc/user/)
- [参考github](https://github.com/theniceboy/nvim/blob/master/README_cn.md)
- [Neovim: 把 init.vim 迁移到 init.lua](https://zhuanlan.zhihu.com/p/467939053)
- [打造neovim像ide一样:有炫酷的ui](https://github.com/NvChad/NvChad)

## 2.安装使用

参考脚本,需要修改:

```sh
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
```

## 3.目录说明

相关的主要目录:

- ~/.config/nvim 配置的目录
- ~/Desktop/liu/tools/nvim-osx64 执行文件的目录
- ~/.local/share/nvim/site/pack/packer/start 插件安装目录
- ~/.local/share/nvim 插件等的目录

nvim目录文件介绍:

目录说明：

- ftplugin：存放不同文件类型的缩进规则文件
- lint：存放各种语言的代码检查规范配置文件，如 pylint 等
- basic：存放基本配置项文件
- conf：存放插件相关配置文件
- dap：存放 DAP 相关配置文件
- lsp：存放 LSP 相关配置文件
- snippet：存放代码片段相关文件

文件说明：

- init.lua：配置入口文件
- config.lua：存放用户自定义配置的文件
- keybinds.lua：存放键位绑定的文件
- plugins.lua：存放依赖插件的文件
- settings.lua：存放 neovim 基本配置项的文件

## 4.帮助说明

packer:

```lua
-- packer配置示例介绍
-- PackerCompile：当插件更改后，运行该命令会使更改生效
-- PackerClean：删除禁用或未使用的插件
-- PackerInstall：清理，然后安装缺少的插件，不更新已有的插件
-- PackerUpdate：清理，然后更新已有的插件和安装缺少的插件
-- PackerSync：相当与 PackerUpdate 和 PackerCompile 的结合体
-- PackerLoad：立即加载某个插件
-- -- packer.startup(
--     {
--         -- 所有插件的安装都书写在 function 中
--         function()
--             -- 包管理器
--             use {
--                 "wbthomason/packer.nvim"
--             }
--             -- 可以一次加载一个插件，跟上一个字符串
--             use "插件地址"
--             -- 可以一次加载多个插件，跟上一个 list
--             use {
--                 "插件地址",
--                 "插件地址",
--                 "插件地址"
--             }
--             -- 对于有依赖的插件，可以使用 requires 跟上一个 list
--             use {
--                 "插件地址",
--                 requires = {
--                      "依赖的插件地址",
--                      "依赖的插件地址",
--                      "依赖的插件地址",
--                 }
--             }
--             -- 可以在插件加载完成后自动运行一些代码
--             use {
--                 "插件地址",
--                 config = function()
--                     "需要运行的代码 ..."
--                 end
--             }
--             -- 插件可以在固定的文件类型里生效
--             use {
--                 "插件地址",
--                 ft = {"html", "css", "javascript"}
--             }
--             -- 插件可以在一些自动事件加载后生效（延迟加载）
--             use {
--                 "插件地址",
--                 event = "事件"  -- 使用 :h event 可获取事件帮助
--             }
--             -- 插件可以在输入一些命令后生效（延迟加载）
--             use {
--                 "插件地址",
--                 cmd = {"命令", "命令", "命令"}
--             }
--             -- 插件可以在按下某些按键后生效（延迟加载）
--             use {
--                 "插件地址",
--                 keys = {
--                    "键位",
--                    "键位"
--                 }
--             }
--             -- 在插件加载后自动执行一些操作
--             use {
--                 "插件地址",
--                 run = "命令"
--             }
--         end,
--         -- 使用浮动窗口
--         config = {
--             display = {
--                 open_fn = require("packer.util").float
--             }
--         }
--     }
-- )
```

