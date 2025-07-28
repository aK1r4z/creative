#> cr:command/claim/trigger
# @public
# @as player
#
# 游戏模式命令被触发

# 修正分数
execute if score @s gamemode matches -2147483647 run scoreboard players set @s gamemode 1

# 修改游戏模式
execute if score @s gamemode matches 0 run function cr:command/gamemode/survival
execute if score @s gamemode matches 1 run function cr:command/gamemode/creative
execute if score @s gamemode matches 2 run function cr:command/gamemode/adventure
execute if score @s gamemode matches 3 run function cr:command/gamemode/spectator

# 重置触发器
function cr:command/gamemode/reset
