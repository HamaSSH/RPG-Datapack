#> player:combat/main/spear/sfx/water
# 水属性

execute positioned ~ ~1.7 ~ run particle dust_color_transition 0.663 0.714 1 2 0.141 0.271 1 ^ ^ ^1 0.3 0.2 0.3 1 5 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition 0.663 0.714 1 1 0.141 0.271 1 ^ ^ ^2 0.3 0.2 0.3 1 7 force
execute positioned ~ ~1.7 ~ run particle dust_color_transition 0.62 0.816 1 1 0.231 0.243 1 ^ ^ ^4 0.3 0.2 0.3 1 6 force
execute positioned ~ ~1.7 ~ run particle bubble_pop ^ ^ ^1 0.3 0.2 0.3 0 4 force
execute positioned ~ ~1.7 ~ run particle bubble_pop ^ ^ ^2 0.3 0.2 0.3 0 4 force
execute positioned ~ ~1.7 ~ run particle bubble_pop ^ ^ ^4 0.3 0.2 0.3 0 4 force
playsound resource:custom.underwater.exit master @a ~ ~ ~ 0.1 1.8
playsound ambient.underwater.enter master @a ~ ~ ~ 0.3 2.0
playsound entity.boat.paddle_water master @p ~ ~ ~ 0.3 2.0