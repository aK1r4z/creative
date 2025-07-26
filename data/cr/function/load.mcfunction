#> cr:load
# @within tag/function minecraft:load
#
# 在重新加载时被调用

# 检测是否为初次加载
execute if function cr:test/is_init run function cr:init

# 检测是否为世界加载
execute if function cr:test/is_load run function cr:world/load

# 调试信息 #
tellraw @a {"translate": "command.reload.done", "fallback": "重新加载完成！"}
