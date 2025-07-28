#> cr:entity/spawn
# @within function cr:entity/tick
# @as entity
#
# 在实体刚刚生成时被调用

# 设置所属地皮坐标
function cr:entity/get_plot_pos

scoreboard players operation @s entity_plot_x = x temp
scoreboard players operation @s entity_plot_z = z temp

# 检测所属地皮的实体数量
scoreboard players set count temp 0

execute as @e[type=!player] if score @s entity_plot_x = x temp if score @s entity_plot_z = z temp run scoreboard players add count temp 1

# 如果所属地皮的实体过多，清除当前实体
execute if score count temp >= %MAX_ENTITY_COUNT% const run return run function cr:entity/max_hint

# 返回值
return fail
