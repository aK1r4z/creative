#> cr:entity/get_plot_pos
# @public
# @as entity
# @return score{temp[x, z]}
#
# 获取当前实体所在的地皮坐标

# 计算坐标
execute store result score x temp run data get entity @s Pos[0]
scoreboard players operation x temp /= %PLOT_SPACING% const
scoreboard players operation x temp *= %PLOT_SPACING% const

execute store result score z temp run data get entity @s Pos[2]
scoreboard players operation z temp /= %PLOT_SPACING% const
scoreboard players operation z temp *= %PLOT_SPACING% const
