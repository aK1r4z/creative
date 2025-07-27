#> cr:player/is_allowed
# @public
# @as player
# @param storage{cr:temp[plot]}
# @return value
#
# 测试当前玩家是否在当前地皮中被允许

data modify storage cr:temp macro set value {}

data modify storage cr:temp macro.name set from entity @s CustomName

return run function cr:system/plot/_is_allowed with storage cr:temp macro
