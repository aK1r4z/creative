#> cr:system/param/hint
# @within function cr:system/param
#
# 提示玩家修复系统参数

function cr:system/string/message/system_prefix
function cr:system/string/_append {"text": ',{"text": "系统参数缺少或不合理，请修复以下系统参数（可点击）"}'}
function cr:system/string/send_all

function cr:system/string/message/system_prefix
function cr:system/string/_append {"text": ',{"text": "[地皮尺寸] ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set %PLOT_SIZE% const "}, "hoverEvent": {"action": "show_text", "contents": {"text": "地皮的边长。最小为 16 ，最大为 128 。"}}}'}
function cr:system/string/_append {"text": ',{"text": "[行道宽度] ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set %SIDEWAY_SIZE% const "}, "hoverEvent": {"action": "show_text", "contents": {"text": "地皮间隔长度。最小为 5 ，最大为 10 。"}}}'}
function cr:system/string/_append {"text": ',{"text": "[认领数量] ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set %MAX_CLAIM_COUNT% const "}, "hoverEvent": {"action": "show_text", "contents": {"text": "玩家可认领的地皮数量。最小为 1 。"}}}'}
function cr:system/string/_append {"text": ',{"text": "[实体数量] ", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set %MAX_ENTITY_COUNT% const "}, "hoverEvent": {"action": "show_text", "contents": {"text": "每个地皮中最多同时存在的实体数量。最小为 0 ，最大为 200 。"}}}'}
function cr:system/string/send_all

function cr:system/string/message/system_prefix
function cr:system/string/_append {"text": ',{"text": "修复完毕后，输入 /function cr:setup 即可启动系统"}'}
function cr:system/string/send_all
