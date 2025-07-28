#> cr:player/get_name
# @public
# @as player
# @return storage{cr:temp[name]}
#
# 获取当前玩家的昵称

# 获取玩家头颅
loot replace block 0 50 0 container.0 loot cr:player_head

# 读取数据
data modify storage cr:temp name set from block 0 50 0 Items[{Slot: 0b}].components."minecraft:profile".name
