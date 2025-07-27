#> cr:entity/is_in_plot
# @public
# @as entity

# 检测 x 坐标
execute store result score test_x temp run data get entity @s Pos[0]
scoreboard players operation test_x temp %= %PLOT_SPACING% const

execute if score test_x temp >= %PLOT_SIZE% const run return fail

# 检测 z 坐标
execute store result score test_z temp run data get entity @s Pos[2]
scoreboard players operation test_z temp %= %PLOT_SPACING% const

execute if score test_z temp >= %PLOT_SIZE% const run return fail

# 返回值
return 1
