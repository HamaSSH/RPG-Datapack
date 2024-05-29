#> player:combat/main/spear/sfx/earth
# 土属性

execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[0.714,0.545,0.365],to_color:[0.4,0.251,0.09],scale:2}  ^ ^ ^1 0.3 0.2 0.3 1 5 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[0.714,0.545,0.365],to_color:[0.4,0.251,0.09],scale:1}  ^ ^ ^2 0.3 0.2 0.3 1 7 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[0.522,0.42,0.31],to_color:[0.392,0.294,0.086],scale:1}  ^ ^ ^4 0.3 0.2 0.3 1 6 force
playsound block.rooted_dirt.fall master @a ~ ~ ~ 0.4 0.7