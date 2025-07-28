#> cr:world/plot/fill_plot
# @within function
#   cr:world/plot/reset
#   cr:world/plot/update
# @param score{temp[x, z]}
#
# params should be plot position with zero offset

# Calc
scoreboard players operation from_x temp = x temp
scoreboard players operation from_z temp = z temp

scoreboard players operation to_x temp = x temp
scoreboard players operation to_z temp = z temp

scoreboard players operation to_x temp += %PLOT_SIZE_MINUS_1% const
scoreboard players operation to_z temp += %PLOT_SIZE_MINUS_1% const

# Store
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get from_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get to_z temp

function cr:world/plot/_fill_plot with storage cr:temp macro
