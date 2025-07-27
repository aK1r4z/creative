#> cr:command/gamemode/spectator
# @public
# @as player
#
# 更改当前玩家游戏模式为旁观模式

# 提示信息
tellraw @s[gamemode=!spectator] {"translate": "commands.gamemode.success.self", "with": [{"translate": "gameMode.spectator"}]}

# 更改游戏模式
gamemode spectator
