#> cr:player/claim
# @public
# @as player
# @param score{temp[x, z]}
#
# 为当前玩家认领指定领地

# 调用宏函数
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.x int 1 run scoreboard players get x temp
execute store result storage cr:temp macro.z int 1 run scoreboard players get z temp
data modify storage cr:temp macro.name set from entity @s CustomName

function cr:system/plot/_claim with storage cr:temp macro

# 增加已认领地皮数量
scoreboard players add @s plot_claimed 1
