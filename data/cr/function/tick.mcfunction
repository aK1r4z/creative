#> cr:tick
# @within tag/function minecraft:tick
#
# 在每个游戏刻被调用

# 系统刻
execute if score running system matches 1 run function cr:system/tick
