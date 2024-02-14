#> player:combat/main/spear/sfx/wind
# 風属性

execute positioned ~ ~1.7 ~ run particle dust_color_transition 0.733 1 0.722 2 0.184 1 0.141 ^ ^ ^1 0.3 0.2 0.3 1 5 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition 0.733 1 0.722 1 0.184 1 0.141 ^ ^ ^2 0.3 0.2 0.3 1 7 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition 0.812 1 0.686 1 0.573 1 0.173 ^ ^ ^4 0.3 0.2 0.3 1 6 force
execute positioned ~ ~1.7 ~ run particle sweep_attack ^ ^ ^2.5 0.2 0.2 0.2 1 1 force
execute positioned ~ ~1.7 ~ run particle sweep_attack ^ ^ ^4 0.2 0.2 0.2 1 1 force
playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 0.6 1.6
playsound resource:custom.weapon.spear master @a ~ ~ ~ 0.3 1.2