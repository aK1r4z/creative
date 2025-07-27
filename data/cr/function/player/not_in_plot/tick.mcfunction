#> cr:player/not_in_plot/tick
# @within function cr:player/tick
#
# 玩家不在地皮中时每刻被调用

# 修改游戏模式
gamemode spectator @s[scores={permission=..3}]

# 检测玩家进入地皮
execute if function cr:entity/is_in_plot run function cr:player/join_plot
