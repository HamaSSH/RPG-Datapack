#> player:combat/main/hammer/sfx/thunder
# 雷属性

particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:2} ~ ~ ~ 0.8 0.8 0.8 1 15 force
particle dust_color_transition{from_color:[0.918,1.0,0.639],to_color:[0.914,1.0,0.153],scale:2} ~ ~ ~ 0.8 0.8 0.8 1 15 force
execute positioned ~ ~1 ~ run particle spit ^ ^ ^1 0.4 0.1 0.4 0.2 8 force
playsound entity.shulker.shoot master @a ~ ~ ~ 0.3 1.2