#> cr:player/leave_plot
# @within function cr:player/in_plot/tick
#
# 在玩家离开当前地皮时被触发

# 显示动作栏文本
title @s actionbar {"text": "已离开领地"}

# 修改游戏模式
gamemode spectator @s[scores={permission=..3}]

# 移除标签
tag @s remove InPlot
