#> cr:player/_get_plot
# @public
# @param x, z
# @return storage{cr:temp[plot]}

data modify storage cr:temp plot set value {}
$data modify storage cr:temp plot set from storage cr:plot plots.$(x).$(z)
