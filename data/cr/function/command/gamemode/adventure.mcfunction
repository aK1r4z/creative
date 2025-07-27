#> cr:command/gamemode/adventure
# @public
# @as player
#
# 更改当前玩家游戏模式为冒险模式

# 提示信息
tellraw @s[gamemode=!adventure] {"translate": "commands.gamemode.success.self", "with": [{"translate": "gameMode.adventure"}]}

# 更改游戏模式
gamemode adventure
