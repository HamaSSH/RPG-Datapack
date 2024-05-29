#> player:combat/main/bow/arrow/particle
# 矢の飛んでいく際のパーティクル

execute if entity @s[tag=Charged] run particle crit ~ ~ ~ 0.07 0.07 0.07 0 3 force

execute if entity @s[tag=ElementFire] run particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:1} ~ ~ ~ 0.07 0.07 0.07 0 5 force
execute if entity @s[tag=ElementWater] run particle dust_color_transition{from_color:[0.663,0.714,1],to_color:[0.141,0.271,1.0],scale:1} ~ ~ ~ 0.07 0.07 0.07 0 5 force
execute if entity @s[tag=ElementThunder] run particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:1} ~ ~ ~ 0.07 0.07 0.07 0 5 force
execute if entity @s[tag=ElementEarth] run particle dust_color_transition{from_color:[0.714,0.545,0.365],to_color:[0.4,0.251,0.09],scale:1} ~ ~ ~ 0.07 0.07 0.07 0 5 force
execute if entity @s[tag=ElementWind] run particle dust_color_transition{from_color:[0.733,1.0,0.722],to_color:[0.184,1.0,0.141.0],scale:1} ~ ~ ~ 0.07 0.07 0.07 0 5 force