#> player:combat/main/spear/sfx/fire
# 火属性

execute positioned ~ ~1.7 ~ run particle dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ^ ^ ^1 0.3 0.2 0.3 1 5 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition 1 0.804 0.169 1 1 0.125 0.023 ^ ^ ^2 0.3 0.2 0.3 1 7 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition 1 0.859 0.392 1 1 0.494 0.153 ^ ^ ^4 0.3 0.2 0.3 1 6 force
execute positioned ~ ~1.7 ~ run particle flame ^ ^ ^2 0.3 0.2 0.3 0 2 force
execute positioned ~ ~1.7 ~ run particle flame ^ ^ ^4 0.3 0.2 0.3 0 2 force
playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 1.3
playsound entity.blaze.burn master @a ~ ~ ~ 0.3 2