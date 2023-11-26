#> mob:status/hp/display/lv1/4
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 17..18 run function mob:status/hp/display/lv0/8
    execute if score @s HPRatio matches 19..20 run function mob:status/hp/display/lv0/9