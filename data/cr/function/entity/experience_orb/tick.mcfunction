#> cr:entity/experience_orb/tick
# @within function cr:entity/tick
# @as experience_orb

# 清除附近实体
execute positioned as @s as @e[type=!player, distance=..3] run function cr:void
