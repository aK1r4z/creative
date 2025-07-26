#> cr:system/param/check
# @within function cr:load
#
# 检测系统参数是否存在
# 如果系统参数残缺，提示玩家修补

# 重置临时变量
scoreboard players set param temp 1

# 检测系统参数
execute if score param temp matches 1 store success score param temp if score %PLOT_SIZE% const matches -2147483648..2147483647

# 如果系统参数残缺，提示玩家修补
execute if score param temp matches 0 run schedule function cr:system/param/hint 1s
