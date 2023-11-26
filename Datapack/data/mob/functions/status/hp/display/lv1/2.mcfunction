#> mob:status/hp/display/lv1/2
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 9..10 run function mob:status/hp/display/lv0/4
    execute if score @s HPRatio matches 11..12 run function mob:status/hp/display/lv0/5