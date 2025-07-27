#> cr:system/plot/get_plot
# @public
# @param score{temp[x, z]}
# @return storage{cr:temp[plot]}
#
# 获取指定坐标的领地信息

# 调用宏函数
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.x int 1 run scoreboard players get x temp
execute store result storage cr:temp macro.z int 1 run scoreboard players get z temp

function cr:system/plot/_get_plot with storage cr:temp macro
