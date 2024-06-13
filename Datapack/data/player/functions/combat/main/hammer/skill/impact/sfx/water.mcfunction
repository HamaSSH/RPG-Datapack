#> player:combat/main/hammer/skill/impact/sfx/water
# 水属性

$particle dust_color_transition{from_color:[0.663,0.714,1.0],to_color:[0.141,0.271,1.0],scale:2} ~ ~ ~ $(size) 0.8 $(size) 1 $(count) force
$particle dust_color_transition{from_color:[0.62,0.816,1.0],to_color:[0.231,0.243,1.0],scale:2} ~ ~ ~ $(size) 0.8 $(size) 1 $(count) force
$particle bubble_pop ~ ~ ~ $(size) 0.3 $(size) 0.1 $(count) force
playsound resource:custom.underwater.exit master @a ~ ~ ~ 0.3 1.1
playsound entity.boat.paddle_water master @a ~ ~ ~ 0.2 0.9