#> cr:setup
# @public
#
# 调用后启动管理系统

# 检查系统参数
function cr:system/param/check
execute if score param temp matches 0 run return fail

# 启动管理系统
scoreboard players set running system 1

# 补全系统参数
scoreboard players operation %PLOT_SIZE_ADD_1% const = %PLOT_SIZE% const
scoreboard players operation %PLOT_SIZE_ADD_1% const += #1 const

scoreboard players operation %PLOT_SIZE_MINUS_1% const = %PLOT_SIZE% const
scoreboard players operation %PLOT_SIZE_MINUS_1% const -= #1 const

scoreboard players operation %PLOT_SPACING% const = %PLOT_SIZE% const
scoreboard players operation %PLOT_SPACING% const += %SIDEWAY_SIZE% const
scoreboard players add %PLOT_SPACING% const 2
