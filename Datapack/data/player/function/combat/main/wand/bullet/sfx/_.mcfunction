#> player:combat/main/wand/bullet/sfx/_
# 通常攻撃のparticle&playsound

execute if entity @s[tag=Normal] run particle witch ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute if entity @s[tag=Normal] run particle witch ^ ^ ^0.5 0.1 0.1 0.1 0 2 force

execute if entity @s[tag=ElementFire] run function player:combat/main/wand/bullet/sfx/fire
execute if predicate player:is_element/water run function player:combat/main/wand/bullet/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/wand/bullet/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/wand/bullet/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/wand/bullet/sfx/wind
