#> cr:system/plot/_claim
# @public
# @as player
# @param name, x, z
#
# 设置指定领地的主人为 $(name)

$data modify storage cr:plot plots.$(x).$(z).owner set value '$(name)'
