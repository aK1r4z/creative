#> cr:test/is_load
# @public
#
# 检测是否在世界加载中加载此数据包

execute store result score player temp if entity @a
execute store result score left_game temp if entity @a[scores={leave_game=1..}]

execute if score player temp matches ..1 if score left_game temp = player temp run return 1
return fail
