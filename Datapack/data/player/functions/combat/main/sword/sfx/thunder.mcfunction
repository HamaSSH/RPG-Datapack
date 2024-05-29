#> player:combat/main/sword/sfx/thunder
# 雷属性

execute positioned ~ ~1 ~ run particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:2} ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
execute positioned ~ ~1 ~ run particle dust_color_transition{from_color:[0.918,1.0,0.639],to_color:[0.914,1.0,0.153],scale:2} ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.5 1.0
playsound entity.shulker.shoot master @a ~ ~ ~ 0.4 1.5
playsound block.beehive.shear master @a ~ ~ ~ 0.2 1.7