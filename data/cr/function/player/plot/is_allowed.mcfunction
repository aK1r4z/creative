#> cr:player/plot/is_allowed
# @public
# @as player
# @param storage{cr:temp[plot, name]}
# @return value
#
# 测试 cr:temp[name] 是否在 cr:temp[plot] 中被允许

# 调用宏函数
data modify storage cr:temp macro set value {}

data modify storage cr:temp macro.name set from storage cr:temp name

return run function cr:system/plot/_is_allowed with storage cr:temp macro
