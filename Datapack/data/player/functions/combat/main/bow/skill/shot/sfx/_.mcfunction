#> player:combat/main/bow/skill/shot/sfx/_
# 通常攻撃のparticle&playsound


particle explosion ~ ~ ~ 1.2 1.2 1.2 1 2 force
particle crit ~ ~ ~ 0.1 0.1 0.1 0 10 force

execute if entity @s[tag=ElementFire] run function player:combat/main/bow/skill/shot/sfx/fire
execute if entity @s[tag=ElementWater] run function player:combat/main/bow/skill/shot/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/bow/skill/shot/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/bow/skill/shot/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/bow/skill/shot/sfx/wind