#> cr:player/plot_info
# @public
# @as player
# @param score{temp[owned, owner]}
#
# 在动作栏显示地皮信息

execute if score owned temp matches 1 if score owner temp matches 0 run title @s actionbar [{"translate": "plot.joined.owned", "fallback": "已进入%s的领地（%s, %s）", "with": [{"storage": "cr:temp", "nbt": "plot.owner"}, {"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}]}]
execute if score owned temp matches 1 if score owner temp matches 1 run title @s actionbar [{"translate": "plot.joined.owner", "fallback": "已回到你的领地（%s, %s）", "with": [{"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}]}]
