-- lua语言缩进规则

-- 是否将 tab 替换为 space
vim.bo.expandtab = true

-- 换行或 >> << 缩进时的 space 数量
vim.bo.shiftwidth = 4

-- 一个 tab 占用几个 space
vim.bo.tabstop = 4

-- tab 和 space 的混合，和上面 2 个设置成相同即可
vim.bo.softtabstop = 4

-- 取消自动注释，当前行是 -- 注释时，按下 CR 或者 o 默认会自动注释下一行，所以这里取消了
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"c", "r", "o"}
