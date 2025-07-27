#> cr:system/param/check
# @within function cr:load
#
# 检测系统参数是否存在
# 如果系统参数缺少或不合理，并提示玩家修复

# 重置临时变量
scoreboard players set param temp 1

# 检测系统参数
execute if score param temp matches 1 store success score param temp if score %PLOT_SIZE% const matches 16..128
execute if score param temp matches 1 store success score param temp if score %SIDEWAY_SIZE% const matches 5..10
execute if score param temp matches 1 store success score param temp if score %MAX_CLAIM_COUNT% const matches 1..
execute if score param temp matches 1 store success score param temp if score %MAX_ENTITY_COUNT% const matches 0..200

# 如果系统参数残缺，提示玩家修复
execute if score param temp matches 0 run schedule function cr:system/param/hint 1s
