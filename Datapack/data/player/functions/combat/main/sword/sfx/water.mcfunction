#> player:combat/main/sword/sfx/water
# 水属性

execute positioned ~ ~1 ~ run particle dust_color_transition 0.663 0.714 1 2 0.141 0.271 1 ^ ^ ^1.5 0.5 0.1 0.5 0 8 force
execute positioned ~ ~1 ~ run particle dust_color_transition 0.62 0.816 1 2 0.231 0.243 1 ^ ^ ^1.5 0.5 0.1 0.5 0 8 force
execute positioned ~ ~1 ~ run particle bubble_pop ^ ^ ^1 0.6 0.2 0.6 0 10 force
playsound resource:custom.underwater.exit master @a ~ ~ ~ 0.2 1.6
playsound block.pointed_dripstone.drip_lava_into_cauldron master @a ~ ~ ~ 0.8 1.4