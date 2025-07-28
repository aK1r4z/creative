#> cr:player/plot/is_owner
# @public
# @as player
# @param storage{cr:temp[plot, name]}
# @return value
#
# 测试 cr:temp[name] 和 cr:temp[plot.owner] 是否相同

data modify storage cr:temp owner set value ""
data modify storage cr:temp owner set from storage cr:temp plot.owner

execute store success score modify temp run data modify storage cr:temp owner set from storage cr:temp name

execute if score modify temp matches 0 run return 1
return fail
