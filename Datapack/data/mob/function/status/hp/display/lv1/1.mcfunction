#> mob:status/hp/display/lv1/1
# HPの割合に応じたモブHPバーの設定

# 更に分岐
  execute if score @s HPRatio matches 5..6 run function mob:status/hp/display/lv0/2
  execute if score @s HPRatio matches 7..8 run function mob:status/hp/display/lv0/3