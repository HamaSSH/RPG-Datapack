#> player:combat/main/dagger/sfx/wind
# 風属性

execute positioned ~ ~1.4 ~ run particle dust_color_transition{from_color:[0.733,1.0,0.722],to_color:[0.184,1.0,0.141.0],scale:1} ^ ^ ^1 0.5 0.2 0.5 1 7 force
execute positioned ~ ~1.4 ~ run particle dust_color_transition{from_color:[0.812,1.0,0.686],to_color:[0.573,1.0,0.173],scale:1} ^ ^ ^3 0.5 0.2 0.5 1 7 force
execute positioned ~ ~1.4 ~ run particle sweep_attack ^ ^ ^3 0 0 0 0.01 1 force
playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 0.8 1.7
playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.3 1.3