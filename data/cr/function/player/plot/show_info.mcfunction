#> cr:player/plot/show_info
# @public
# @as player
# @param score{temp[owned, owner]}
#
# 在动作栏显示地皮信息

# 无人认领
execute if score owned temp matches 0 run title @s actionbar [{"translate": "plot.joined.not_owned", "fallback": "无人认领的领地（%s, %s）", "with": [{"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}]}]

# 别人的领地
execute if score owned temp matches 1 if score owner temp matches 0 run title @s actionbar [{"translate": "plot.joined.owned", "fallback": "已进入%s的领地（%s, %s）", "with": [{"storage": "cr:temp", "nbt": "plot.owner", "interpret": true}, {"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}]}]

# 自己的领地
execute if score owned temp matches 1 if score owner temp matches 1 run title @s actionbar [{"translate": "plot.joined.owner", "fallback": "已回到你的领地（%s, %s）", "with": [{"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}]}]
