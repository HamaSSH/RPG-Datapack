#> player:combat/main/bow/skill/meteor/meteorite/sfx/_
# 通常攻撃のparticle&playsound


particle explosion ~ ~ ~ 0.5 0.5 0.5 1 2 force
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.2 0.8

execute if entity @s[tag=ElementFire] run function player:combat/main/bow/skill/meteor/meteorite/sfx/fire
execute if entity @s[tag=ElementWater] run function player:combat/main/bow/skill/meteor/meteorite/sfx/water
execute if entity @s[tag=ElementThunder] run function player:combat/main/bow/skill/meteor/meteorite/sfx/thunder
execute if entity @s[tag=ElementEarth] run function player:combat/main/bow/skill/meteor/meteorite/sfx/earth
execute if entity @s[tag=ElementWind] run function player:combat/main/bow/skill/meteor/meteorite/sfx/wind