#> cr:entity/max_hint
# @public
#
# 发出当前地皮实体过多的提示

function cr:system/string/message/system_prefix
function cr:system/string/_append {text: ',{"text": "位于 X "}, {"score": {"objective": "temp", "name": "x"}}, {"text": " Z "}, {"score": {"objective": "temp", "name": "z"}}, {"text": " 的领地中的实体数量已达上限"}'}
function cr:system/string/send_all
