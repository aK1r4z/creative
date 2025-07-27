#> cr:player/_is_owner
# @public
# @param name storage{cr:temp[plot]}
# @return value
#
# 测试输入的名字和 cr:plot[owner] 是否相同

data modify storage cr:temp owner set value ""
data modify storage cr:temp owner set from storage cr:temp plot.owner

$execute store success score owner temp run data modify storage cr:temp owner set value '$(name)'

execute if score owner temp matches 0 run return 1
return fail
