#> player:combat/main/spear/sfx/wind
# 風属性

execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[0.733,1.0,0.722],to_color:[0.184,1.0,0.141],scale:2} ^ ^ ^1 0.3 0.2 0.3 1 5 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[0.733,1.0,0.722],to_color:[0.184,1.0,0.141],scale:1} ^ ^ ^2 0.3 0.2 0.3 1 7 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[0.812,1.0,0.686],to_color:[0.573,1.0,0.173],scale:1} ^ ^ ^4 0.3 0.2 0.3 1 6 force
execute positioned ~ ~1.7 ~ run particle sweep_attack ^ ^ ^2.5 0.2 0.2 0.2 1 1 force
execute positioned ~ ~1.7 ~ run particle sweep_attack ^ ^ ^4 0.2 0.2 0.2 1 1 force
playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 0.6 1.6
playsound resource:custom.weapon.spear master @a ~ ~ ~ 0.3 1.2