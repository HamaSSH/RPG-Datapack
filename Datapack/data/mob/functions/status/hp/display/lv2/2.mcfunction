#> mob:status/hp/display/lv2/2
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 17..20 run function mob:status/hp/display/lv1/4
    execute if score @s HPRatio matches 21..24 run function mob:status/hp/display/lv1/5