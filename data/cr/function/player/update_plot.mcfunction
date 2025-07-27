#> cr:player/update_plot
# @public
#
# 更新玩家当前地皮和与其连接的地皮

# 0
function cr:entity/get_plot_pos

function cr:world/plot/update

# 1
scoreboard players operation z temp += %PLOT_SPACING% const

function cr:world/plot/update

# 2
scoreboard players operation x temp += %PLOT_SPACING% const

function cr:world/plot/update

# 3
scoreboard players operation z temp -= %PLOT_SPACING% const

function cr:world/plot/update
