#> player:combat/main/wand/sfx/_
# 通常攻撃のparticle&playsound

playsound resource:custom.weapon.wand master @a ~ ~ ~ 0.5 1.0
execute if score @s ElementTimer matches 0 run playsound resource:custom.weapon.wand master @a ~ ~ ~ 0.5 1.0
execute if score @s ElementTimer matches 0 run particle witch ~ ~ ~ 0.1 0.1 0.1 0.1 10 force

execute if entity @s[tag=ElementFire] run function player:combat/main/wand/sfx/fire
execute if predicate player:is_element/water run function player:combat/main/wand/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/wand/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/wand/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/wand/sfx/wind
