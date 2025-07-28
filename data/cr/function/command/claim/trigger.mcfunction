#> cr:command/claim/trigger
# @public
# @as player
#
# 申请地块命令被触发

# 重置触发器
function cr:command/claim/reset

# 检测玩家申请地块数量
execute if score @s plot_claimed >= @s max_plot_claimed run return run function cr:command/claim/max_hint

# 获取地皮信息
function cr:entity/get_plot_pos
function cr:system/plot/get_plot

# 如果地皮已被占领，发出提示并返回
execute if data storage cr:temp plot.owner run return run function cr:command/claim/claimed_hint

# 重置并占领当前地皮
function cr:player/plot/claim
function cr:command/claim/success_hint

function cr:world/plot/reset
