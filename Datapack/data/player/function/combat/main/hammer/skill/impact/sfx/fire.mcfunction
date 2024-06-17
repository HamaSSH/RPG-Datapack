#> player:combat/main/hammer/skill/impact/sfx/fire
# 火属性

$particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ~ ~ ~ $(size) 0.8 $(size) 1 $(count) force
$particle dust_color_transition{from_color:[1.0,0.859,0.392],to_color:[1.0,0.494,0.153],scale:2} ~ ~ ~ $(size) 0.8 $(size) 1 $(count) force
$particle flame ~ ~ ~ $(size) 0.3 $(size) 0.1 $(count) force
playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.2 0.9
playsound entity.blaze.burn master @a ~ ~ ~ 0.3 1.5