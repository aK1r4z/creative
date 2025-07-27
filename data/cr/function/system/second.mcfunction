#> cr:system/second
# @within function cr:tick
#
# 在系统启动后每秒被调用

# 玩家功能

# 系统计时器
scoreboard players add second system 1
execute if score second system matches 60.. run scoreboard players set second system 0

scoreboard players operation second_5 system = second system
scoreboard players operation second_5 system %= #5 const
execute if score second_5 system matches 0 run function cr:system/second_5


# 重置临时变量
scoreboard players reset * temp


# 重置计时器
scoreboard players set tick system 0
