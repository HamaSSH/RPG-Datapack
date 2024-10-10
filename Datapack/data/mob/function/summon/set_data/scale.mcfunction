#> mob:summon/set_data/scale
# モブの大きさ(scale)を設定

# 元のscaleと補正値を取得
    execute store result score $MobScale Temporary run attribute @s scale get 10000
    execute store result score $Multiplier Temporary run data get storage asset:mob Data.scale

# 補正値(%)に基づいて計算
    scoreboard players operation $MobScale Temporary *= $Multiplier Temporary
    scoreboard players operation $MobScale Temporary /= #100 Constant
    execute if entity @s[type=silverfish,predicate=lib:has_passenger] run scoreboard players set $MobScale Temporary 625

# scaleに代入
    execute store result entity @s attributes[{id:"scale"}].base double 0.0001 run scoreboard players get $MobScale Temporary

# リセット
    scoreboard players reset $MobScale
    scoreboard players reset $Multiplier