#> cr:world/plot/fill_sideway
# @[TODO]
# @param score{temp[x, z]}
#
# params should be plot position with zero offset 

# (x-sideway-1) 55 (z-sideway-1)   (x-2)    55 (z+plot)
scoreboard players operation from_x temp = x temp
scoreboard players operation from_x temp -= %SIDEWAY_SIZE% const
scoreboard players remove from_x temp 1

scoreboard players operation from_z temp = z temp
scoreboard players operation from_z temp -= %SIDEWAY_SIZE% const
scoreboard players remove from_z temp 1

scoreboard players operation to_x temp = x temp
scoreboard players remove to_x temp 2

scoreboard players operation to_z temp = z temp
scoreboard players operation to_z temp += %PLOT_SIZE% const

# Fill
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get from_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get to_z temp

function cr:world/plot/_fill_sideway with storage cr:temp macro

# (x-1)         55 (z-sideway-1)   (x+plot) 55 (z-2)
scoreboard players operation from_x temp = x temp
scoreboard players remove from_x temp 1

scoreboard players operation from_z temp = z temp
scoreboard players operation from_z temp -= %SIDEWAY_SIZE% const
scoreboard players remove from_z temp 1

scoreboard players operation to_x temp = x temp
scoreboard players operation to_x temp += %PLOT_SIZE% const

scoreboard players operation to_z temp = z temp
scoreboard players remove to_z temp 2

# Fill
data modify storage cr:temp macro set value {}

execute store result storage cr:temp macro.from_x int 1 run scoreboard players get from_x temp
execute store result storage cr:temp macro.from_z int 1 run scoreboard players get from_z temp
execute store result storage cr:temp macro.to_x int 1 run scoreboard players get to_x temp
execute store result storage cr:temp macro.to_z int 1 run scoreboard players get to_z temp

function cr:world/plot/_fill_sideway with storage cr:temp macro
