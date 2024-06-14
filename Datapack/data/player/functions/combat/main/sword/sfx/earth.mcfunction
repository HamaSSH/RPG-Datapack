#> player:combat/main/sword/sfx/earth
# 土属性

execute positioned ~ ~1 ~ run particle dust_color_transition{from_color:[0.714,0.545,0.365],to_color:[0.4,0.251,0.09],scale:2} ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
execute positioned ~ ~1 ~ run particle dust_color_transition{from_color:[0.522,0.42,0.31],to_color:[0.392,0.294,0.086],scale:2} ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.5 1.0
playsound block.shroomlight.step master @a ~ ~ ~ 1.0 1.2