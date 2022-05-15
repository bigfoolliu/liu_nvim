-- https://github.com/ur4ltz/surround.nvim

require("surround").setup(
    {
        mappings_style = "surround"
    }
)

-- 2. 增改删

-- 2.1 增
-- 单词周围加双引号：ysiw"
-- 单词周围加圆括号：ysiw(，左括号是带空格的
-- 单词周围加方括号：ysiw]，右括号不带空格
-- 以空格为分界加圆括号：ysiWb，这是不带空格的括号，大 B 代表不带空格的花括号
-- 从光标位置到字母 n 加 <span>：ysfn<span>
-- 从光标位置到字母 n 前面加 "：ystn"
-- 整行前后加 <div>：yss<div>
-- v 模式选中区域前后加 "：v 选中，大 S，"。
-- 这种情况不会换行
-- 大 V 模式选中区域前后加 <div>：大 V 选中，大 S，<div>。
-- 这种情况会换行，div 标签和内容一共占据 3 行。

-- 2.2 改
-- 双引号改单引号：cs"'，作用于整行

-- 2.3 删
-- 删除双引号：ds"，作用于整行

