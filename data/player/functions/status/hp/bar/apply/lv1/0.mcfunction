# 更に分岐
  execute if score @s hp_ratio matches ..2 run function player:status/hp/bar/apply/lv0/0
  execute if score @s hp_ratio matches 3..4 run function player:status/hp/bar/apply/lv0/1