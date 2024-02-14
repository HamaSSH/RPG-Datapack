#> player:combat/main/dagger/sfx/water
# 水属性

execute positioned ~ ~1.4 ~ run particle dust_color_transition 0.663 0.714 1 1 0.141 0.271 1 ^ ^ ^2 0.5 0.2 0.5 1 7 force
execute positioned ~ ~1.4 ~ run particle dust_color_transition 0.62 0.816 1 1 0.231 0.243 1 ^ ^ ^2 0.5 0.2 0.5 1 7 force
execute positioned ~ ~1.4 ~ run particle bubble_pop ^ ^ ^2 0.5 0.2 0.5 0 5 force
playsound resource:custom.underwater.exit master @a ~ ~ ~ 0.1 1.8
playsound block.pointed_dripstone.drip_water_into_cauldron master @a ~ ~ ~ 0.6 1.3