#> player:combat/main/hammer/sfx/thunder
# 雷属性

particle dust_color_transition 0.992 1 0.62 2 1 0.941 0.133 ~ ~ ~ 0.8 0.8 0.8 1 15 force
particle dust_color_transition 0.918 1 0.639 2 0.914 1 0.153 ~ ~ ~ 0.8 0.8 0.8 1 15 force
execute positioned ~ ~1 ~ run particle spit ^ ^ ^1 0.4 0.1 0.4 0.2 8 force
playsound entity.shulker.shoot master @a ~ ~ ~ 0.3 1.2