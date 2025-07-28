#> cr:player/in_plot/check_allowance
# @public
# @as player
# @param storage{cr:temp[plot]}
# @return score[temp{owner, allowed}]
#
# 检测玩家是否被允许在当前地皮建造

# 获取地皮信息
function cr:system/plot/get_plot

# 检测权限
function cr:player/plot/check_allowance
