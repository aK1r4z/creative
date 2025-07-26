#> cr:init
# @within function cr:load
#
# 在初次加载时被调用



# 创建计分板 #
## 系统变量
scoreboard objectives add system dummy "系统变量"
scoreboard objectives add const dummy "系统常量"
scoreboard objectives add temp dummy "临时变量"

## 玩家变量
scoreboard objectives add pid dummy "玩家编号"
scoreboard objectives add permission dummy "玩家权限等级"

### 玩家行为判据
scoreboard objectives add leave_game custom:leave_game "玩家退出游戏"

# 设置当前玩家为管理员 #
scoreboard players set @a[limit=1] permission 6

# 初始化变量 #
scoreboard players set init system 1

# 调用世界加载函数
function cr:world/load

# 调试信息
say is init
