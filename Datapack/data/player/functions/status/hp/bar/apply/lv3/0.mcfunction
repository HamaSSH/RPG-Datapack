# 更に分岐
    execute if score @s hp_ratio matches ..8 run function player:status/hp/bar/apply/lv2/0
    execute if score @s hp_ratio matches 9..16 run function player:status/hp/bar/apply/lv2/1