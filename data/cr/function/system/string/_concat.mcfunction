#> cr:system/string/_concat
# @public
# @param prefix, text, suffix

$data modify storage cr:temp string set value '$(prefix)$(text)$(suffix)'
