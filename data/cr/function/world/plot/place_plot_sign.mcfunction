#> cr:world/plot/place_plot_sign
# @within function
#   cr:world/plot/reset
#   cr:world/plot/update
# @param score{temp[sign, x, z]}
#
# 为地皮放置标识牌
# 参数中的坐标必须为无偏移的地皮原点坐标


# 计算坐标
scoreboard players operation from_x temp = x temp
scoreboard players remove from_x temp 1

scoreboard players operation from_z temp = z temp
scoreboard players remove from_z temp 1

# 放置告示牌
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.x int 1 run scoreboard players get x temp
execute store result storage cr:temp macro.z int 1 run scoreboard players get z temp

execute store result storage cr:temp macro.sign_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.sign_z int 1 run scoreboard players get from_z temp

data modify storage cr:temp macro.sign set value "oak_sign"

function cr:world/plot/_place_plot_sign with storage cr:temp macro
