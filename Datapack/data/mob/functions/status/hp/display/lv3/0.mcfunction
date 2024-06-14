#> mob:status/hp/display/lv3/0
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches ..8 run function mob:status/hp/display/lv2/0
    execute if score @s HPRatio matches 9..16 run function mob:status/hp/display/lv2/1