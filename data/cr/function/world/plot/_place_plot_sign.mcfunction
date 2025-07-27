#> cr:world/plot/_place_plot_sign
# @within function cr:world/plot/place_plot_sign
# @param x z sign sign_x sign_z

# 检测地皮是否已被认领
scoreboard players set owned temp 0
$execute store success score owned temp if data storage cr:plot plots.$(x).$(z).owner

# 放置告示牌
$setblock $(sign_x) 56 $(sign_z) air

$execute if score owned temp matches 0 run setblock $(sign_x) 56 $(sign_z) $(sign)[rotation=6]{front_text: {messages: ['""', '{"translate": "plot.unclaimed", "fallback": "此领地还未被认领！"}', '[{"text": "X "}, {"score": {"objective": "temp", "name": "x"}}, {"text": " Z "}, {"score": {"objective": "temp", "name": "z"}}]', '""'], has_glowing_text: 1b}}
$execute if score owned temp matches 1 run setblock $(sign_x) 56 $(sign_z) $(sign)[rotation=6]{front_text: {messages: ['""', '{"translate": "plot.claimed", "fallback": "%s的领地", "with": [{"storage": "cr:plot", "nbt": "plots.$(x).$(z).owner", "interpret": true}]}', '[{"text": "X "}, {"score": {"objective": "temp", "name": "x"}}, {"text": " Z "}, {"score": {"objective": "temp", "name": "z"}}]', '""'], has_glowing_text: 1b}}
