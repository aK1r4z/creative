#> cr:player/tick
# @within function cr:system/tick
# @as player

# 检测玩家离开游戏
execute if score @s leave_game matches 1.. run function cr:player/leave_game
