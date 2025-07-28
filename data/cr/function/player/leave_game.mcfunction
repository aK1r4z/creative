#> cr:player/leave_game
# @within function cr:player/tick
#
# 在玩家离开游戏时被调用

# 重置分数
scoreboard players set @s leave_game 0
