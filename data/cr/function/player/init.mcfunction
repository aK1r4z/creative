#> cr:player/init
# @within function cr:player/tick
# @as player
#
# 初始化玩家数据

# 设置玩家变量 #
# 分配编号
execute store result score @s pid run scoreboard players add %MAX_PID% pid 1

# 设置权限等级
scoreboard players set @s permission 1

# 设置最大地块数量
scoreboard players operation @s max_plot_claimed = %MAX_CLAIM_COUNT% const

# 重置命令
function cr:command/reset

# 欢迎信息
tellraw @a {"translate": "system.message.welcome", "fallback": "欢迎新玩家%s加入服务器！", "with": [{"selector": "@s"}]}
