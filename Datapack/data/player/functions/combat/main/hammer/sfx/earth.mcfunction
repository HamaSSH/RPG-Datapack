#> player:combat/main/hammer/sfx/earth
# 土属性

execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[0.714,0.545,0.365],to_color:[0.4,0.251,0.09],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[0.522,0.42,0.31],to_color:[0.392,0.294,0.086],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle block dirt ^ ^ ^1.2 0.8 0.8 0.8 0.7 15 force
playsound block.shroomlight.step master @a ~ ~ ~ 1.0 0.9