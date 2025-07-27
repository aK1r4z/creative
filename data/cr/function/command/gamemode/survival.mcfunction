#> cr:command/gamemode/survival
# @public
# @as player
#
# 更改当前玩家游戏模式为生存模式

# 提示信息
tellraw @s[gamemode=!survival] {"translate": "commands.gamemode.success.self", "with": [{"translate": "gameMode.survival"}]}

# 更改游戏模式
gamemode survival
