#> cr:entity/is_in_plot
# @public
# @as entity

# 检测 x 坐标
execute store result score x temp run data get entity @s Pos[0]
scoreboard players operation x temp %= %PLOT_SPACING% const

execute if score x temp >= %PLOT_SIZE% const run return fail

# 检测 z 坐标
execute store result score z temp run data get entity @s Pos[2]
scoreboard players operation z temp %= %PLOT_SPACING% const

execute if score z temp >= %PLOT_SIZE% const run return fail

# 返回值
return 1
