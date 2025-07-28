#> cr:player/plot/check_allowance
# @public
# @as player
# @param storage{cr:temp[plot]}
# @return score[temp{owner, allowed}]
#
# 检测玩家是否被允许在当前地皮建造

# 获取玩家名字
function cr:player/get_name

# 检测权限
execute store result score owner temp run function cr:player/plot/is_owner
execute store result score allowed temp run function cr:player/plot/is_allowed

# 如果玩家不是地皮主人，也没有地皮权限，修改游戏模式
execute if score owner temp matches 0 if score allowed temp matches 0 run gamemode spectator @s[scores={permission=..3}]
