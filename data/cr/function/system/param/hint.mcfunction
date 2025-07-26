#> cr:system/param/hint
# @within function cr:system/param
#
# 提示玩家修补系统参数

function cr:system/string/message/system_prefix
function cr:system/string/_append {"text": ',{"text": "系统参数残缺，请修补以下系统参数（可点击）"}'}
function cr:system/string/send_all

function cr:system/string/message/system_prefix
function cr:system/string/_append {"text": ',{"text": "[地皮尺寸] ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set %PLOT_SIZE% const "}, "hoverEvent": {"action": "show_text", "contents": {"text": "点击获取指令"}}}'}
function cr:system/string/_append {"text": ',{"text": "[测试参数] ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set %PLOT_SIZE% const "}, "hoverEvent": {"action": "show_text", "contents": {"text": "点击获取指令"}}}'}
function cr:system/string/send_all

function cr:system/string/message/system_prefix
function cr:system/string/_append {"text": ',{"text": "修补完毕后，输入 /function cr:setup 即可启动系统"}'}
function cr:system/string/send_all
