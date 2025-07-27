#> cr:command/tick_player
# @within function cr:command/tick
# @as player
#
# 每刻在普通玩家上被调用

# 启用触发器 #
# 申请地块
scoreboard players enable @s claim

# 游戏模式
scoreboard players enable @s gamemode
scoreboard players enable @s gm



# 检测命令触发 #
# 申请地块
execute if score @s claim matches -2147483647.. run function cr:command/claim/trigger

# 游戏模式
scoreboard players operation @s gamemode = @s gm
execute if score @s gamemode matches -2147483647.. run function cr:command/gamemode/trigger
