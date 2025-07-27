#> cr:init
# @within function cr:load
#
# 在初次加载时被调用

# 设置当前玩家为管理员 #
scoreboard players set @a[limit=1] permission 6

# 初始化变量 #
scoreboard players set init system 1

scoreboard players operation %PLOT_SIZE% const = %PLOT_SIZE% const
scoreboard players operation %SIDEWAY_SIZE% const = %SIDEWAY_SIZE% const
scoreboard players operation %MAX_CLAIM_COUNT% const = %MAX_CLAIM_COUNT% const
scoreboard players operation %MAX_ENTITY_COUNT% const = %MAX_ENTITY_COUNT% const

# 调用世界加载函数
function cr:world/load
