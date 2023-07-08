#> mob:status/hp/display/lv1/6
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 25..26 run function mob:status/hp/display/lv0/12
    execute if score @s HPRatio matches 27..28 run function mob:status/hp/display/lv0/13