#> player:combat/main/hammer/sfx/water
# 水属性

execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[0.663,0.714,1],to_color:[0.141,0.271,1.0],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle dust_color_transition{from_color:[0.62,0.816,1],to_color:[0.231,0.243,1.0],scale:2} ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
execute positioned ~ ~0.7 ~ run particle bubble_pop ^ ^ ^1.2 0.8 0.8 0.8 1 15 force
playsound resource:custom.underwater.exit master @a ~ ~ ~ 0.3 1.1
playsound entity.boat.paddle_water master @a ~ ~ ~ 0.2 0.9