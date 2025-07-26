#> cr:entity/tick
# @within function cr:system/tick
# @as entity
#
# 每刻在实体上被触发

# 如果非玩家实体不在地皮里，清除实体
execute if entity @s[type=!player] unless function cr:entity/is_in_plot run function cr:void
