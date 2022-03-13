# AttributeModifierリセット
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-9
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-8
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-7
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-6
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-5
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-4
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-3
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-2
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-1
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-0-0-0
# 移動速度のAttributeModifier適用
    scoreboard players operation $MovementSpeed Temporary = @s spd
    scoreboard players operation $MovementSpeed Temporary *= #2^21 Constant
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-9 "MovementSpeed9" 0.1024 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-8 "MovementSpeed8" 0.0512 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-7 "MovementSpeed7" 0.0256 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-6 "MovementSpeed6" 0.0128 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-5 "MovementSpeed5" 0.0064 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-4 "MovementSpeed4" 0.0032 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-3 "MovementSpeed3" 0.0016 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-2 "MovementSpeed2" 0.0008 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-1 "MovementSpeed1" 0.0004 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-0-0 "MovementSpeed0" 0.0002 add
# spdの値を保存
    scoreboard players operation @s PreviousSPD = @s spd
# リセット
    scoreboard players reset $MovementSpeed