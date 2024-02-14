#> player:combat/main/sword/sfx/fire
# 火属性

execute positioned ~ ~1 ~ run particle dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
execute positioned ~ ~1 ~ run particle dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ^ ^ ^1.5 0.5 0.1 0.5 0 10 force
playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 1.1
playsound entity.blaze.burn master @a ~ ~ ~ 0.15 1.8