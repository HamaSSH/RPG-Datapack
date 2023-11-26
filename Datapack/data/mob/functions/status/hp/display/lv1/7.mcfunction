#> mob:status/hp/display/lv1/7
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 29..30 run function mob:status/hp/display/lv0/14
    execute if score @s HPRatio matches 31..32 run function mob:status/hp/display/lv0/15