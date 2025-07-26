#> cr:test/is_init
# @public
#
# 检测是否为第一次加载此数据包

execute if score init system matches -2147483648..2147483647 run return fail
return 1
