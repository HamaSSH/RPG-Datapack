#> player:combat/main/dagger/sfx/_
# 通常攻撃のparticle&playsound

playsound resource:custom.weapon.dagger master @a ~ ~ ~ 0.3 1.0
execute if score @s ElementTimer matches 0 run playsound resource:custom.weapon.dagger master @a ~ ~ ~ 0.7 1.0
execute positioned ~ ~1.4 ~ run particle enchanted_hit ^ ^ ^2 0.5 0.2 0.5 0.5 15 force

execute if entity @s[tag=ElementFire] run function player:combat/main/dagger/sfx/fire
execute if entity @s[tag=ElementWater] run function player:combat/main/dagger/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/dagger/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/dagger/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/dagger/sfx/wind
