#> player:combat/main/sword/sfx/fire
# 火属性

execute positioned ~ ~1 ~ run particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
execute positioned ~ ~1 ~ run particle dust_color_transition{from_color:[1.0,0.859,0.392],to_color:[1.0,0.494,0.153],scale:2} ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.5 1.0
playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 1.1
playsound entity.blaze.burn master @a ~ ~ ~ 0.15 1.8