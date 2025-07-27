#> cr:command/tick
# @within function cr:player/tick
# @as player
#
# 每刻在玩家上被调用，实现命令相关功能

# 检测玩家类型 #
# 普通玩家
execute if score @s permission matches 1.. run function cr:command/tick_player

# 管理员
execute if score @s permission matches 4.. run function cr:command/tick_operator
