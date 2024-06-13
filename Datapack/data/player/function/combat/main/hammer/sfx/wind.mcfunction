#> player:combat/main/hammer/sfx/wind
# 風属性

execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[0.733,1.0,0.722],to_color:[0.184,1.0,0.141],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[0.812,1.0,0.686],to_color:[0.573,1.0,0.173],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle sweep_attack ^ ^ ^1.2 0.4 0.6 0.6 1 5 force
playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 0.6 1.2
playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.3 0.8