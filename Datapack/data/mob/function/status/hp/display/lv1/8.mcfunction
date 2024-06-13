#> mob:status/hp/display/lv1/8
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 33..34 run function mob:status/hp/display/lv0/16
    execute if score @s HPRatio matches 35..36 run function mob:status/hp/display/lv0/17