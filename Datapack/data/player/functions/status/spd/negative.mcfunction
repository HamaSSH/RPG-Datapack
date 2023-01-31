##########
#>
#

# 移動速度のAttributeModifier適用
    scoreboard players operation $MovementSpeed Temporary *= #-1 Constant
    scoreboard players operation $MovementSpeed Temporary *= #2^23 Constant
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-7 "MovementSpeed17" -0.1024 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-6 "MovementSpeed16" -0.0512 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-5 "MovementSpeed15" -0.0256 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-4 "MovementSpeed14" -0.0128 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-3 "MovementSpeed13" -0.0064 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-2 "MovementSpeed12" -0.0032 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-1 "MovementSpeed11" -0.0016 add
    scoreboard players operation $MovementSpeed Temporary *= #2 Constant
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-0-1-0 "MovementSpeed10" -0.0008 add
# リセット
    scoreboard players set $MovementSpeed Temporary 0