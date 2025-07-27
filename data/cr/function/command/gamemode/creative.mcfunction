#> cr:command/gamemode/creative
# @public
# @as player
#
# 更改当前玩家游戏模式为创造模式

# 提示信息
tellraw @s[gamemode=!creative] {"translate": "commands.gamemode.success.self", "with": [{"translate": "gameMode.creative"}]}

# 更改游戏模式
gamemode creative
