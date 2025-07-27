#> cr:player/join_plot
# @within function
#   cr:player/in_plot/tick
#   cr:player/not_in_plot/tick
# @param score{temp[x, z]}
# @return score{temp[owned, owner, allowed]}
#
# 在玩家进入地皮时被触发

# 获取地皮信息
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.x int 1 run scoreboard players get x temp
execute store result storage cr:temp macro.z int 1 run scoreboard players get z temp

function cr:system/plot/_get_plot with storage cr:temp macro

# 检测地皮是否已被认领
execute store success score owned temp if data storage cr:temp plot.owner

# 检测玩家是否被允许建造
function cr:player/in_plot/check

# 显示地皮信息
function cr:player/plot_info with storage cr:temp macro

# 添加标签
tag @s add InPlot

# 设置玩家当前地皮坐标
scoreboard players operation @s entity_plot_x = x temp
scoreboard players operation @s entity_plot_z = z temp
