#> cr:system/tick
# @within function cr:tick
#
# 在系统启动后每刻被调用

# 实体功能
execute as @e run function cr:entity/tick

# 玩家功能
execute as @a run function cr:player/tick
