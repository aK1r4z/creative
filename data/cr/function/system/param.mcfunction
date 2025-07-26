#> cr:system/param
# @within function cr:load
#
# 检测系统参数是否存在
# 如果系统参数不存在，提示玩家修补

# 重置临时变量
scoreboard players set param temp 1

execute unless score %PLOT_SIZE% const matches -2147483648..2147483647
