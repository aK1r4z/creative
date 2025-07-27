#> cr:player/in_plot/tick
# @within function cr:player/tick
# @as player
#
# 玩家在地皮中时每刻被调用

# 检测玩家是否属于当前地皮
scoreboard players set leave_plot temp 1
execute if score @s entity_plot_x = x temp if score @s entity_plot_z = z temp run scoreboard players set leave_plot temp 0

# 如果属于当前地皮，检测玩家是否存在于地皮内部
execute store success score in_plot temp run function cr:entity/is_in_plot
execute if score leave_plot temp matches 0 if score in_plot temp matches 0 run scoreboard players set leave_plot temp 1

# 如果玩家位于行道，调用离开地皮函数
execute if score leave_plot temp matches 1 if score in_plot temp matches 0 run function cr:player/leave_plot

# 如果玩家移动到其他地皮，调用进入地皮函数
execute if score leave_plot temp matches 1 if score in_plot temp matches 1 run function cr:player/join_plot

# 如果玩家存在于当前地皮，检测玩家权限
execute if entity @s[gamemode=!spectator] if score leave_plot temp matches 0 run function cr:player/in_plot/check

# 设置玩家当前地皮坐标
scoreboard players operation @s entity_plot_x = x temp
scoreboard players operation @s entity_plot_z = z temp
