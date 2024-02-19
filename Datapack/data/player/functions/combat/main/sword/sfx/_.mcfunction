#> player:combat/main/sword/sfx/_
# 通常攻撃のparticle&playsound

execute if score @s ElementTimer matches 0 run playsound resource:custom.weapon.sword master @a ~ ~ ~ 1.0 1.0
execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 0.01 1 force

execute if entity @s[tag=ElementFire] run function player:combat/main/sword/sfx/fire
execute if entity @s[tag=ElementWater] run function player:combat/main/sword/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/sword/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/sword/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/sword/sfx/wind
