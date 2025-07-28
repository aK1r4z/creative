#> cr:player/plot/join
# @within function
#   cr:player/in_plot/tick
#   cr:player/not_in_plot/join_plot
# @param score{temp[x, z]}
# @return score{temp[owned, owner, allowed]}
#
# 在玩家进入地皮时被触发

# 获取地皮信息
function cr:system/plot/get_plot

# 检测地皮是否已被认领
execute store result score owned temp if data storage cr:temp plot.owner

# 检测玩家是否被允许建造
function cr:player/plot/check_allowance

# 显示地皮信息
function cr:player/plot/show_info

# 添加标签
tag @s add InPlot

# 设置玩家当前地皮坐标
scoreboard players operation @s entity_plot_x = x temp
scoreboard players operation @s entity_plot_z = z temp
