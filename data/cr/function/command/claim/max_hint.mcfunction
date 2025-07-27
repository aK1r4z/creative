#> cr:command/claim/max_hint
# @public
# @as player
#
# 提醒玩家可申请的地皮已达到上限

tellraw @s {"translate": "command.claim.max", "fallback": "你不能申请更多领地了", "color": "red"}
