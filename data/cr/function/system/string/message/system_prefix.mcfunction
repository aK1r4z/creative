#> cr:system/string/message/system_prefix
# @public

function cr:system/string/message/system_name

data modify storage cr:temp macro set value {}
data modify storage cr:temp macro.prefix set value '{"text": "<"},'
data modify storage cr:temp macro.text set from storage cr:temp string
data modify storage cr:temp macro.suffix set value ',{"text":"> "}'

function cr:system/string/_concat with storage cr:temp macro
