# 更に分岐
  execute if score @s hp_ratio matches ..4 run function player:status/hp/bar/apply/lv1/0
  execute if score @s hp_ratio matches 5..8 run function player:status/hp/bar/apply/lv1/1