#> cr:system/string/send_all
# @public

data modify storage cr:temp macro set value {}
data modify storage cr:temp macro.prefix set value '['
data modify storage cr:temp macro.text set from storage cr:temp string
data modify storage cr:temp macro.suffix set value ']'

function cr:system/string/_concat with storage cr:temp macro

tellraw @a {"storage": "cr:temp", "nbt": "string", "interpret": true}
