#> player:combat/main/dagger/sfx/thunder
# 雷属性

execute positioned ~ ~1.4 ~ run particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:1} ^ ^ ^2 0.5 0.2 0.5 1 7 force
execute positioned ~ ~1.4 ~ run particle dust_color_transition{from_color:[0.918,1.0,0.639],to_color:[0.914,1.0,0.153],scale:1} ^ ^ ^2 0.5 0.2 0.5 1 7 force
playsound entity.shulker.shoot master @a ~ ~ ~ 0.3 1.8
playsound item.axe.scrape master @a ~ ~ ~ 0.15 2