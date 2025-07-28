#> cr:system/tick
# @within function cr:tick
#
# 在系统启动后每刻被调用

# 实体功能
execute as @e[type=!player] if predicate cr:in_overworld run function cr:entity/tick

# 玩家功能
execute as @a if predicate cr:in_overworld run function cr:player/tick

# 系统秒
scoreboard players add tick system 1
execute if score tick system matches 20.. run function cr:system/second
