#> mob:status/hp/display/lv1/5
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 21..22 run function mob:status/hp/display/lv0/10
    execute if score @s HPRatio matches 23..24 run function mob:status/hp/display/lv0/11