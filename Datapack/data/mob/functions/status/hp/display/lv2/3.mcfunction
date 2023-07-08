#> mob:status/hp/display/lv2/3
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 25..28 run function mob:status/hp/display/lv1/6
    execute if score @s HPRatio matches 29..32 run function mob:status/hp/display/lv1/7