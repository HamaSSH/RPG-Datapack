#> player:combat/main/hammer/sfx/fire
# 火属性

execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[1.0,0.859,0.392],to_color:[1.0,0.494,0.153],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~1 ~ run particle flame ^ ^ ^1 0.4 0.1 0.4 0.2 8 force
playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 0.9
playsound entity.blaze.burn master @a ~ ~ ~ 0.3 1.5