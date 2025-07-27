#> cr:command/claim/claimed_hint
# @public
# @as player
# @param score{temp[x, z]}
#
# 提示玩家当前地皮已被申领

tellraw @s {"translate": "command.claim.claimed", "fallback": "此领地（%s, %s）已被%s申领", "color": "red", "with": [{"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}, {"storage": "cr:temp", "nbt": "plot.owner", "interpret": true}]}
