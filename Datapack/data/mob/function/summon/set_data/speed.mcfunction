#> mob:summon/set_data/speed
# モブの移動速度(movement_speed)を設定

# 元のmovement_speedと補正値を取得
    execute store result score $MovementSpeed Temporary run attribute @s movement_speed get 10000
    execute store result score $Multiplier Temporary run data get storage asset:mob Data.Status.AGI

# 補正値(%)に基づいて計算
    scoreboard players operation $MovementSpeed Temporary *= $Multiplier Temporary
    scoreboard players operation $MovementSpeed Temporary /= #100 Constant

# movement_speedに代入
    execute store result entity @s attributes[{id:"movement_speed"}].base double 0.0001 run scoreboard players get $MovementSpeed Temporary

# リセット
    scoreboard players reset $MovementSpeed
    scoreboard players reset $Multiplier