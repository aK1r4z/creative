#> cr:system/plot/_is_allowed
# @public
# @param name storage{cr:temp[plot]}
# @return value

$execute if data storage cr:temp plot.allowed{$(name): true} run return 1
return fail
