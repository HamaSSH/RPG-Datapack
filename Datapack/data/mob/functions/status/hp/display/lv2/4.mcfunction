#> mob:status/hp/display/lv2/4
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 33..36 run function mob:status/hp/display/lv1/8
    execute if score @s HPRatio matches 37.. run function mob:status/hp/display/lv1/9