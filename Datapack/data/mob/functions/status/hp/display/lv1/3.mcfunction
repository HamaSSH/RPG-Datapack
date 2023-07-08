#> mob:status/hp/display/lv1/3
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 13..14 run function mob:status/hp/display/lv0/6
    execute if score @s HPRatio matches 15..16 run function mob:status/hp/display/lv0/7