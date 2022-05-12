---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim

local packer = require("packer")
packer.startup(
    {
        -- 所有插件的安装都书写在 function 中
        function()
            -- 包管理器
            use {
                "wbthomason/packer.nvim"
            }

            -- vim文档
            use {
                "yianwillis/vimcdoc"
            }

            -- nvim-tree文档树
            use {
               "kyazdani42/nvim-tree.lua",
                requires = {
                    -- 依赖一个图标插件
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
                    require("conf.nvim-tree")
                end
            }

            -- 优秀的暗色主题
            use {
                "catppuccin/nvim",
                -- 改个别名，因为它的名字是 nvim，可能会冲突
                as = "catppuccin",
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/catppuccin.lua 文件中的代码
                    require("conf.catppuccin")
                end
            }

            -- 支持 LSP 状态的 buffer 栏
            use {
                "akinsho/bufferline.nvim",

                -- 删除 buffer 时不影响现有布局
                requires = {
                    "famiu/bufdelete.nvim"
                },
                config = function()
                require("conf.bufferline")
                end
            }
        end,
        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }
    }
)

-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)



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
