##########
#>
#

# 更に分岐
  execute if score @s HPRatio matches ..4 run function mob:status/hp/display/lv1/0
  execute if score @s HPRatio matches 5..8 run function mob:status/hp/display/lv1/1