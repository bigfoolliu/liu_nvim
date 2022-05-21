-- 文档树

-- 自定义按键,按大写o, 则打开文件但是不退出tree
-- local function open_without_exit_tree(node) {
--     print(node.absolute_path)
-- }

-- https://github.com/kyazdani42/nvim-tree.lua
require("nvim-tree").setup(
    {
        -- 自动关闭,已经不再用了
        -- auto_close = true,
        -- 视图
        view = {
            -- 宽度
            width = 30,
            -- 高度
            height = 30,
            -- 隐藏顶部的根目录显示
            hide_root_folder = false,
            -- 自动调整大小
            auto_resize = true
        },
        diagnostics = {
            -- 是否启用文件诊断信息
            enable = true,
            icons = {
                hint = "",
                info = "",
                warning = "",
                error = ""
            }
        },
        git = {
            -- 是否启用 git 信息
            enable = true,
            ignore = true,
            timeout = 500
        },
        mappings = {
            custom_only = false,
            -- 键盘映射
            list = {
                -- user mappings go here
                { key = {"O"}, action = "open_without_exit_tree" },
        },
    },
    }
)
-- 默认图标，可自行修改
vim.g.nvim_tree_icons = {
    default = " ",
    symlink = " ",
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "",
        deleted = "",
        ignored = ""
    },
    folder = {
        -- arrow_open = "╰─▸",
        -- arrow_closed = "├─▸",
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = ""
    }
}
