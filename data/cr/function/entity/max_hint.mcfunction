#> cr:entity/max_hint
# @public
#
# 发出当前地皮实体过多的提示

function cr:system/string/message/system_prefix
function cr:system/string/_append {text: ',{"text": "当前领地中的实体数量已达上限"}'}
function cr:system/string/_send {selector: "@a if score @s entity_plot_x = x temp if score @s entity_plot_z = z temp"}

return 1
