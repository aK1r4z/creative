#> cr:player/in_plot/check
# @public
# @as player
# @param score{temp[x, z]}
# @return score[temp{owner, allowed}]
#
# 检测玩家是否被允许在当前地皮建造

# 检测权限
execute store success score owner temp run function cr:player/is_owner
execute store success score allowed temp run function cr:player/is_allowed

# 如果玩家不是地皮主人，也没有地皮权限，修改游戏模式
execute if score owner temp matches 0 if score allowed temp matches 0 run gamemode spectator @s[scores={permission=..3}]
