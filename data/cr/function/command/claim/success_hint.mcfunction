#> cr:command/claim/success_hint
# @public
# @as player
# @param score{temp[x, z]}
#
# 提示玩家领取成功

tellraw @s {"translate": "command.claim.success", "fallback": "成功领取位于（%s, %s）的领地", "with": [{"score": {"name": "x", "objective": "temp"}}, {"score": {"name": "z", "objective": "temp"}}]}
