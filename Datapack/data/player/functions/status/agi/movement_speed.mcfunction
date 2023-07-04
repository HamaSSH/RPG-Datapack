#> player:status/agi/movement_speed
# スコアに基づくプレイヤーの移動速度の設定

# AttributeModifierのリセット(AGI>=0)
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-9
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-8
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-7
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-6
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-5
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-4
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-3
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-2
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-1
    attribute @s generic.movement_speed modifier remove 83a-51-1-1-0

# AttributeModifierのリセット(AGI<0)
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-7
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-6
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-5
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-4
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-3
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-2
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-1
    attribute @s generic.movement_speed modifier remove 83a-51-1-2-0

# 移動速度のAttributeModifier適用
    scoreboard players operation $MovementSpeed Temporary = @s AGI
    execute if score $MovementSpeed Temporary matches 512.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-9 "MovementSpeed9" 0.1024 add
    execute if score $MovementSpeed Temporary matches 512.. run scoreboard players remove $MovementSpeed Temporary 512
    execute if score $MovementSpeed Temporary matches 256.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-8 "MovementSpeed8" 0.0512 add
    execute if score $MovementSpeed Temporary matches 256.. run scoreboard players remove $MovementSpeed Temporary 256
    execute if score $MovementSpeed Temporary matches 128.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-7 "MovementSpeed7" 0.0256 add
    execute if score $MovementSpeed Temporary matches 128.. run scoreboard players remove $MovementSpeed Temporary 128
    execute if score $MovementSpeed Temporary matches 64.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-6 "MovementSpeed6" 0.0128 add
    execute if score $MovementSpeed Temporary matches 64.. run scoreboard players remove $MovementSpeed Temporary 64
    execute if score $MovementSpeed Temporary matches 32.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-5 "MovementSpeed5" 0.0064 add
    execute if score $MovementSpeed Temporary matches 32.. run scoreboard players remove $MovementSpeed Temporary 32
    execute if score $MovementSpeed Temporary matches 16.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-4 "MovementSpeed4" 0.0032 add
    execute if score $MovementSpeed Temporary matches 16.. run scoreboard players remove $MovementSpeed Temporary 16
    execute if score $MovementSpeed Temporary matches 8.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-3 "MovementSpeed3" 0.0016 add
    execute if score $MovementSpeed Temporary matches 8.. run scoreboard players remove $MovementSpeed Temporary 8
    execute if score $MovementSpeed Temporary matches 4.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-2 "MovementSpeed2" 0.0008 add
    execute if score $MovementSpeed Temporary matches 4.. run scoreboard players remove $MovementSpeed Temporary 4
    execute if score $MovementSpeed Temporary matches 2.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-1 "MovementSpeed1" 0.0004 add
    execute if score $MovementSpeed Temporary matches 2.. run scoreboard players remove $MovementSpeed Temporary 2
    execute if score $MovementSpeed Temporary matches 1.. run attribute @s generic.movement_speed modifier add 83a-51-1-1-0 "MovementSpeed0" 0.0002 add
    execute if score $MovementSpeed Temporary matches 1.. run scoreboard players remove $MovementSpeed Temporary 1
    execute if score $MovementSpeed Temporary matches ..-128 run attribute @s generic.movement_speed modifier add 83a-51-1-2-7 "MovementSpeed17" -0.1024 add
    execute if score $MovementSpeed Temporary matches ..-128 run scoreboard players remove $MovementSpeed Temporary 128
    execute if score $MovementSpeed Temporary matches ..-64 run attribute @s generic.movement_speed modifier add 83a-51-1-2-6 "MovementSpeed16" -0.0512 add
    execute if score $MovementSpeed Temporary matches ..-64 run scoreboard players remove $MovementSpeed Temporary 64
    execute if score $MovementSpeed Temporary matches ..-32 run attribute @s generic.movement_speed modifier add 83a-51-1-2-5 "MovementSpeed15" -0.0256 add
    execute if score $MovementSpeed Temporary matches ..-32 run scoreboard players remove $MovementSpeed Temporary 32
    execute if score $MovementSpeed Temporary matches ..-16 run attribute @s generic.movement_speed modifier add 83a-51-1-2-4 "MovementSpeed14" -0.0128 add
    execute if score $MovementSpeed Temporary matches ..-16 run scoreboard players remove $MovementSpeed Temporary 16
    execute if score $MovementSpeed Temporary matches ..-8 run attribute @s generic.movement_speed modifier add 83a-51-1-2-3 "MovementSpeed13" -0.0064 add
    execute if score $MovementSpeed Temporary matches ..-8 run scoreboard players remove $MovementSpeed Temporary 8
    execute if score $MovementSpeed Temporary matches ..-4 run attribute @s generic.movement_speed modifier add 83a-51-1-2-2 "MovementSpeed12" -0.0032 add
    execute if score $MovementSpeed Temporary matches ..-4 run scoreboard players remove $MovementSpeed Temporary 4
    execute if score $MovementSpeed Temporary matches ..-2 run attribute @s generic.movement_speed modifier add 83a-51-1-2-1 "MovementSpeed11" -0.0016 add
    execute if score $MovementSpeed Temporary matches ..-2 run scoreboard players remove $MovementSpeed Temporary 2
    execute if score $MovementSpeed Temporary matches ..-1 run attribute @s generic.movement_speed modifier add 83a-51-1-2-0 "MovementSpeed10" -0.0008 add
    execute if score $MovementSpeed Temporary matches ..-1 run scoreboard players remove $MovementSpeed Temporary 1

# 素早さに変化がある時だけfunctionを実行
    scoreboard players operation @s PreviousAGI = @s AGI

# リセット
    scoreboard players reset $MovementSpeed