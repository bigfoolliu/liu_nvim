-- 文件介绍:
-- 本文件存放键位绑定的文件


----------------------------------------------------------------------------------------
-- 通用设置

-- leader 键 默认设置为空格,修改为,
vim.g.mapleader = ","

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,  -- 在全局生效
    bmap = vim.api.nvim_buf_set_keymap,  -- 在缓冲区生效
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}


-- 日期缩写
-- 不能使用的lua配置仍然使用viml
vim.cmd([[
    iab xdate <C-r>=strftime("20%y/%m/%d")<cr>
    iab xdatetime <C-r>=strftime("20%y/%m/%d %H:%M:%S")<cr>
    iab xtime <C-r>=strftime("%H:%M:%S")<cr>
]]
)


----------------------------------------------------------------------------------------
-- 插入模式

-- 插入模下 jj 退出插入模式
vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.opts)

-- 插入模式下的上下左右移动
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)


----------------------------------------------------------------------------------------
-- 可视模式

-- 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)


----------------------------------------------------------------------------------------
-- 命令模式


----------------------------------------------------------------------------------------
-- normal模式

-- ,w来保存文件
vim.keybinds.gmap("n", "<leader>w", ":w!<CR>", vim.keybinds.opts)

-- ,q退出文件,退出vim
vim.keybinds.gmap("n", "<leader>q", ":quitall<CR>", vim.keybinds.opts)

-- 使用空格来搜索文件
vim.keybinds.gmap("n", "<Space>", "/", vim.keybinds.opts)

-- 使用oo来在当前行的下一行插入一行
vim.keybinds.gmap("n", "oo", "o<ESC>", vim.keybinds.opts)

-- 使用OO来在当前行的上一行插入一行
vim.keybinds.gmap("n", "OO", "O<ESC>", vim.keybinds.opts)

-- 到行首和行尾, 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)

-- 将 C-u 和 C-d 调整为上下滑动 10 行而不是半页, ctrl + u/d
-- 可以理解为ctrl + up/down加速记忆
vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.opts)

-- 修改分屏大小, command + 上/下/左/右
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

-- 正常模式下按 ESC 取消高亮显示
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)


-----------------------------
-- 由 bufdelete 插件所提供的方法
-- 控制buffer

-- 关闭当前 buffer, ctrl + q
vim.keybinds.gmap("n", "<C-q>", "<cmd>Bdelete!<CR>", vim.keybinds.opts)

-- 切换上一个缓冲区, ctrl + h
vim.keybinds.gmap("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", vim.keybinds.opts)

-- 切换下一个缓冲区, ctrl + l
vim.keybinds.gmap("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<cmd-]>", "<cmd>BufferLineCycleNext<CR>", vim.keybinds.opts)

-- 关闭左侧缓冲区, , + bh
vim.keybinds.gmap("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", vim.keybinds.opts)

-- 关闭右侧缓冲区, , + bl
vim.keybinds.gmap("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", vim.keybinds.opts)


-------------------------------
-- 由 hop 插件提供的方法
-- 快速跳转到当前页面的某行,某个单词或者某个字符

-- 搜索并跳转到单词,主要使用
vim.keybinds.gmap("n", "<leader>hw", "<cmd>HopWord<CR>", vim.keybinds.opts)

-- 搜索并跳转到行
vim.keybinds.gmap("n", "<leader>hl", "<cmd>HopLine<CR>", vim.keybinds.opts)

-- 搜索并跳转到字符
vim.keybinds.gmap("n", "<leader>hc", "<cmd>HopChar1<CR>", vim.keybinds.opts)


-------------------------------
-- 由 nvim-hlslens 插件提供
-- 直接搜索光标下的字符或者单词

vim.keybinds.gmap("n", "*", "*<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "#", "#<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)


-------------------------------
-- 由 todo-comments 插件提供
-- 查找 TODO 标签,ft
vim.keybinds.gmap("n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown<CR>", vim.keybinds.opts)


-------------------------------
-- 由 Comments 插件提供
-- 根据文件类型来注释

-- gcc, 注释/取消注释当前行
-- 4gcc, 给接下来的4行注释

-- gbc, 进行块注释,可以选中需要注释的文本,然后统一注释
-- gco, 给下面的一行注释
-- gcA, 在文件的末尾添加注释

-- NORMAL mode
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment

-- VISUAL mode
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment
--
-- Extra mappings
-- These mappings are enabled by default. (config: mappings.extra)
-- NORMAL mode
-- `gco` - Insert comment to the next line and enters INSERT mode
-- `gcO` - Insert comment to the previous line and enters INSERT mode
-- `gcA` - Insert comment to end of the current line and enters INSERT mode


-- 其他操作
-- # Linewise
-- `gcw` - Toggle from the current cursor position to the next word
-- `gc$` - Toggle from the current cursor position to the end of line
-- `gc}` - Toggle until the next blank line
-- `gc5j` - Toggle 5 lines after the current cursor position
-- `gc8k` - Toggle 8 lines before the current cursor position
-- `gcip` - Toggle inside of paragraph
-- `gca}` - Toggle around curly brackets
--
-- # Blockwise
--
-- `gb2}` - Toggle until the 2 next blank line
-- `gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
-- `gbac` - Toggle comment around a class (w/ LSP/treesitter support)


-------------------------------
-- 由 vim-surround 插件提供

-- 删除包裹的特殊字符,添加或删除(){}等
-- ys, 然后输入iw, 或者 w, 表明选中这个单词, 然后输入 ( 表明包裹, 左括号有空格,右边没有
-- cs, 改变包裹符号
-- vs, v选中需要包裹的字符, s开始surroud,最后输入(
-- ds, 删除包裹符号


-------------------------------
-- 由 neoformat 插件提供

-- 按,cb 自动格式化代码
vim.keybinds.gmap("n", "<leader>cf", "<cmd>Neoformat<CR>", vim.keybinds.opts)


-------------------------------
-- 由 nvim-tree 插件提供
-- 光标在tree中的时候,默认按键

-- g?     : 查看帮助

-- o      : 打开目录或文件
-- -      : 返回上层目录
-- .      : 直接进入vim模式来操作该文件
-- q      : 退出目录树

-- a      : 新增目录或文件,如果是目录,需要在末尾加一个/,如果是多重目录,可以a/b/c
-- r      : 重命名目录或文件
-- x      : 剪切目录或文件
-- d      : 删除目录或文件,会有确认
-- p      : 粘贴目录或文件
-- s      : 使用系统默认程序打开目录或文件

-- c      : 复制目录或文件
-- y      : 复制目录或文件名称
-- Y      : 复制目录或文件相对路径
-- gy     : 复制目录或文件绝对路径

-- ]c     : 跳转到下一个git过的文件或目录
-- [c     : 跳转到上一个git过的文件或目录

-- <Tab>  : 将文件添加到缓冲区，但不移动光标

-- <C-v>  : 垂直分屏打开文件
-- <C-x>  : 水平分屏打开文件
-- <C-r>  : 重命名目录或文件，删除已有目录名称
-- <C-t>  : 使用一个新的tab来打开文件
-- <C-]>  : 进入光标下的目录

-- I      : 切换隐藏文件/目录的可见性
-- H      : 切换点文件的可见性
-- R      : 刷新资源管理器
-- S      : 提示用户输入路径,让树进入该目录

-- <BS>   : 回车键关闭当前打开的目录

-- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索

-- 目录后加上反斜杠 /
vim.g.nvim_tree_add_trailing = 1

-- 按 leader 1 打开/关闭文件树
vim.keybinds.gmap("n", "<leader>1", "<cmd>NvimTreeToggle<CR>", vim.keybinds.opts)

-- 按 alt + h/j/k/l 来切换窗口
-- vim.keybinds.gmap("n", "<C-S>h", "<C-w>h", vim.keybinds.opts)

-- 按 leader fc 在文件树中找到当前以打开文件的位置,快捷记忆为: find current
vim.keybinds.gmap("n", "<leader>fc", "<cmd>NvimTreeFindFile<CR>", vim.keybinds.opts)

-- 按ctrl + w + w在目录树和窗口之间切换


-----------------------------------
-- 由插件switch提供

-- 快速取反意单词，如 true 变为 false
vim.keybinds.gmap("n", "gs", ":Switch<CR>", vim.keybinds.opts)


-----------------------------------
-- 由插件telescope提供
-- lsp插件,工作目录文件搜索

-- ctrl + n: 下一个
-- <CR>     确认选择并跳转
-- <C-x>	确认选择并水平打开这个文件
-- <C-v>	确认选择并垂直打开这个文件
-- <C-t>	Go to a file in a new tab
-- ?	Show mappings for picker actions (normal mode)
-- <C-c>    关闭telescope搜索
-- <Esc>	normal模式关闭搜索
-- <Tab>	折叠搜索并跳转到下一下

-- 在当前的目录快速查找文件,ff
vim.keybinds.gmap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", vim.keybinds.opts)

-- 在当前的目录下查找指定的字符,fg
vim.keybinds.gmap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", vim.keybinds.opts)

-- 搜索当前的所有的buffer
vim.keybinds.gmap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", vim.keybinds.opts)

-- 搜索命令的帮助
vim.keybinds.gmap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", vim.keybinds.opts)

