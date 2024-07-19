#> player:combat/main/spear/sfx/_
# 通常攻撃のparticle&playsound

playsound resource:custom.weapon.spear master @a ~ ~ ~ 0.5 1.0
execute if score @s ElementTimer matches 0 run playsound resource:custom.weapon.spear master @a ~ ~ ~ 0.5 1.0
execute positioned ~ ~1.7 ~ run particle crit ^ ^ ^ 0.25 0.1 0.25 0.2 2 force
execute positioned ~ ~1.7 ~ run particle crit ^ ^ ^2 0.25 0.1 0.25 0.2 3 force
execute positioned ~ ~1.7 ~ run particle crit ^ ^ ^4 0.25 0.1 0.25 0.2 3 force

execute if entity @s[tag=ElementFire] run function player:combat/main/spear/sfx/fire
execute if predicate player:is_element/water run function player:combat/main/spear/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/spear/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/spear/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/spear/sfx/wind
