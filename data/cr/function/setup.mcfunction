#> cr:setup
# @public
#
# 调用后启动管理系统

# 检查系统参数
function cr:system/param/check
execute if score param temp matches 0 run return fail

# 启动管理系统
scoreboard players set setup system 1
