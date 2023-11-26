#> mob:summon/set_speed
# モブの移動速度(generic.movement_speed)を設定

# 元のgeneric.movement_speedと補正値を取得
    execute store result score $MovementSpeed Temporary run attribute @s generic.movement_speed get 10000
    execute store result score $Multiplier Temporary run data get storage asset:mob Data.Status.AGI

# 補正値(%)に基づいて計算
    scoreboard players operation $MovementSpeed Temporary *= $Multiplier Temporary
    scoreboard players operation $MovementSpeed Temporary /= #100 Constant

# generic.movement_speedに代入
    execute store result entity @s Attributes[{Name:"generic.movement_speed"}].Base double 0.0001 run scoreboard players get $MovementSpeed Temporary

# リセット
    scoreboard players reset $MovementSpeed
    scoreboard players reset $Multiplier