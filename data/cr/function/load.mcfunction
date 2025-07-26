#> cr:load
# @within tag/function minecraft:load
#
# 在重新加载时被调用

# 创建计分板 #
## 系统变量
scoreboard objectives add system dummy "系统变量"
scoreboard objectives add const dummy "系统常量"
scoreboard objectives add temp dummy "临时变量"

## 玩家变量
scoreboard objectives add pid dummy "玩家编号"

scoreboard objectives add permission dummy "玩家权限等级"



# 检测系统参数 #
function cr:system/param
