#> player:combat/main/spear/sfx/fire
# 火属性

execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ^ ^ ^1 0.3 0.2 0.3 1 5 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:1} ^ ^ ^2 0.3 0.2 0.3 1 7 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition{from_color:[1.0,0.859,0.392],to_color:[1.0,0.494,0.153],scale:1} ^ ^ ^4 0.3 0.2 0.3 1 6 force
execute positioned ~ ~1.7 ~ run particle flame ^ ^ ^2 0.3 0.2 0.3 0 2 force
execute positioned ~ ~1.7 ~ run particle flame ^ ^ ^4 0.3 0.2 0.3 0 2 force
playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 1.3
playsound entity.blaze.burn master @a ~ ~ ~ 0.3 2