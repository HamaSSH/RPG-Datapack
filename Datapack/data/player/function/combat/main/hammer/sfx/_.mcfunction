#> player:combat/main/hammer/sfx/_
# 通常攻撃のparticle&playsound

playsound resource:custom.weapon.hammer master @a ~ ~ ~ 0.5 1.0
execute if score @s ElementTimer matches 0 run playsound resource:custom.weapon.hammer master @a ~ ~ ~ 0.5 1.0
execute positioned ~ ~0.7 ~ run particle explosion ^ ^ ^1.2 0 0 0 0.1 1 force

execute if entity @s[tag=ElementFire] run function player:combat/main/hammer/sfx/fire
execute if predicate player:is_element/water run function player:combat/main/hammer/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/hammer/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/hammer/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/hammer/sfx/wind
