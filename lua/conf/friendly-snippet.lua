-- 新增代码片段
-- vim-vsnip 能够新增 vscode 格式的用户代码片段，我们在 lua/basic/conf.lua 文件中设定一下代码片段保存的位置：
-- 
-- -- 指定代码片段存储路径，这个目录我们在第二章节的时候已经创建好了
-- vim.g.vsnip_snippet_dir = "~/.config/nvim/snippet"
-- 退出重进 neovim，然后打开一个 Lua 文件，命令行输入：
-- 
-- :VsnipOpen
-- 即可新增用户代码片段了。


-- snippet中的json格式
-- Place your snippets for javascript here. Each snippet is defined under a snippet name and has a prefix, body and 
-- description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
-- $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
-- same ids are connected.
-- Example:
-- "Print to console": {
-- 	"prefix": "log",
-- 	"body": [
-- 		"console.log('$1');",
-- 		"$2"
-- 	],
-- 	"description": "Log output to console"
-- }

