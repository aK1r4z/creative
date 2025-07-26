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

### 玩家行为判据
scoreboard objectives add leave_game custom:leave_game "玩家退出游戏"



# 设置系统常量
scoreboard players set #1 const 1



# 检测是否为初次加载
execute if function cr:test/is_init run function cr:init

# 检测是否为世界加载
execute if function cr:test/is_load run function cr:world/load



# 调试信息 #
tellraw @a {"translate": "command.reload.done", "fallback": "重新加载完成！"}
