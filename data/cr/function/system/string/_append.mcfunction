#> cr:system/string/_append
# @public
# @param text

data modify storage cr:temp macro set value {}

data modify storage cr:temp macro.prefix set from storage cr:temp string
$data modify storage cr:temp macro.text set value '$(text)'
data modify storage cr:temp macro.suffix set value ""

function cr:system/string/_concat with storage cr:temp macro
