#> mob:status/hp/display/lv1/0
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches ..2 run function mob:status/hp/display/lv0/0
    execute if score @s HPRatio matches 3..4 run function mob:status/hp/display/lv0/1