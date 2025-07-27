#> cr:player/tick
# @within function cr:system/tick
# @as player
#
# 每刻在玩家上被触发

# 检测玩家初次进入游戏
scoreboard players add @s pid 0
execute if score @s pid matches 0 run function cr:player/init

# 检测玩家离开游戏
execute if score @s leave_game matches 1.. run function cr:player/leave_game

# 获取当前地皮坐标
function cr:entity/get_plot_pos

# 玩家地皮交互功能
execute if entity @s[tag=InPlot] run function cr:player/in_plot/tick
execute if entity @s[tag=!InPlot] run function cr:player/not_in_plot/tick

# 玩家命令功能
function cr:command/tick
