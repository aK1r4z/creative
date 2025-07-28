#> cr:world/plot/fill_plot_frame
# @within function
#   cr:world/plot/reset
#   cr:world/plot/update
# @param score{temp[x, z]}
#
# params should be plot position with zero offset

# Calc
scoreboard players operation from_x temp = x temp
scoreboard players remove from_x temp 1

scoreboard players operation from_z temp = z temp
scoreboard players remove from_z temp 1

scoreboard players operation to_x temp = x temp
scoreboard players operation to_x temp += %PLOT_SIZE% const

scoreboard players operation to_z temp = z temp
scoreboard players operation to_z temp += %PLOT_SIZE% const

# Frames
## 1
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get from_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get to_z temp

function cr:world/plot/_fill_plot_frame with storage cr:temp macro

## 2
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get to_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get to_z temp

function cr:world/plot/_fill_plot_frame with storage cr:temp macro

## 3
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get to_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get from_z temp

function cr:world/plot/_fill_plot_frame with storage cr:temp macro

## 4
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get from_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get from_z temp

function cr:world/plot/_fill_plot_frame with storage cr:temp macro

# 放置告示牌
