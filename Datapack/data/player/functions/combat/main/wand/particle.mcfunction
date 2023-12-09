#> player:combat/main/wand/particle
# 杖通常攻撃の弾のパーティクル

execute if entity @s[tag=Normal] run particle witch ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute if entity @s[tag=Normal] run particle witch ^ ^ ^0.5 0.1 0.1 0.1 0 2 force

execute if entity @s[tag=ElementFire] run particle dust_color_transition 1 0.804 0.169 1 1 0.125 0.023 ~ ~ ~ 0.07 0.07 0.07 0 3 force
execute if entity @s[tag=ElementFire] run particle dust_color_transition 1 0.859 0.392 1 1 0.494 0.153 ^ ^ ^0.5 0.1 0.1 0.1 0 3 force
execute if entity @s[tag=ElementWater] run particle dust_color_transition 0.663 0.714 1 1 0.141 0.271 1 ~ ~ ~ 0.07 0.07 0.07 0 3 force
execute if entity @s[tag=ElementWater] run particle dust_color_transition 0.62 0.816 1 1 0.231 0.243 1 ^ ^ ^0.5 0.1 0.1 0.1 0 3 force
execute if entity @s[tag=ElementThunder] run particle dust_color_transition 0.992 1 0.62 1 1 0.941 0.133 ~ ~ ~ 0.07 0.07 0.07 0 3 force
execute if entity @s[tag=ElementThunder] run particle dust_color_transition 0.918 1 0.639 1 0.914 1 0.153 ^ ^ ^0.5 0.1 0.1 0.1 0 3 force
execute if entity @s[tag=ElementEarth] run particle dust_color_transition 0.714 0.545 0.365 1 0.4 0.251 0.09 ~ ~ ~ 0.07 0.07 0.07 0 3 force
execute if entity @s[tag=ElementEarth] run particle dust_color_transition 0.522 0.42 0.31 1 0.392 0.294 0.086 ^ ^ ^0.5 0.1 0.1 0.1 0 3 force
execute if entity @s[tag=ElementWind] run particle dust_color_transition 0.733 1 0.722 1 0.184 1 0.141 ~ ~ ~ 0.07 0.07 0.07 0 3 force
execute if entity @s[tag=ElementWind] run particle dust_color_transition 0.812 1 0.686 1 0.573 1 0.173 ^ ^ ^0.5 0.1 0.1 0.1 0 3 force