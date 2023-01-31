##########
#>
#

# 更に分岐
    execute if score @s hp_ratio matches 9..12 run function player:status/hp/bar/apply/lv1/2
    execute if score @s hp_ratio matches 13..16 run function player:status/hp/bar/apply/lv1/3