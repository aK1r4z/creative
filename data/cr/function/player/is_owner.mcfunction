#> cr:player/is_owner
# @public
# @as player
# @param storage{cr:temp[plot]}
# @return value
#
# 测试当前玩家的名字和 cr:temp[plot.owner] 是否相同

data modify storage cr:temp macro set value {}

data modify storage cr:temp macro.name set from entity @s CustomName

return run function cr:system/plot/_is_owner with storage cr:temp macro
