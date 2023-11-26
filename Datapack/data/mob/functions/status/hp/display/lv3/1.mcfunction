#> mob:status/hp/display/lv3/1
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 17..24 run function mob:status/hp/display/lv2/2
    execute if score @s HPRatio matches 25..32 run function mob:status/hp/display/lv2/3