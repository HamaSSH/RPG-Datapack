#> mob:status/hp/display/lv2/1
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 9..12 run function mob:status/hp/display/lv1/2
    execute if score @s HPRatio matches 13..16 run function mob:status/hp/display/lv1/3