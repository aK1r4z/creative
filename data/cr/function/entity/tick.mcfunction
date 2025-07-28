#> cr:entity/tick
# @within function cr:system/tick
# @as entity
#
# 每刻在实体上被触发

# 关于返回值：
# 失败代表实体存活，否则实体死亡

# 如果实体不在地皮里，清除实体
execute if entity @s[type=!player] unless function cr:entity/is_in_plot run return run function cr:void

# 实体生成检测
execute unless score @s entity_plot_x matches -2147483648..2147483647 unless score @s entity_plot_z matches -2147483648..2147483647 if function cr:entity/spawn run return run function cr:void

# 实体类型检测 #
# 经验球
execute if entity @s[type=experience_orb] run function cr:entity/experience_orb/tick
