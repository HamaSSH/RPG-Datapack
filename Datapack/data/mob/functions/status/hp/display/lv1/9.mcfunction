#> mob:status/hp/display/lv1/9
# HPの割合に応じたモブHPバーの設定

# 更に分岐
    execute if score @s HPRatio matches 37..38 run function mob:status/hp/display/lv0/18
    execute if score @s HPRatio matches 39.. run function mob:status/hp/display/lv0/19