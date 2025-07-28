#> cr:player/plot/leave
# @within function cr:player/in_plot/tick
# @as player
#
# 在玩家离开当前地皮时被触发

# 显示动作栏文本
title @s actionbar {"text": "已离开领地"}

# 更新周围地皮
execute if entity @s[gamemode=!spectator] run function cr:player/update_plot

# 修改游戏模式
gamemode spectator @s

# 移除标签
tag @s remove InPlot
