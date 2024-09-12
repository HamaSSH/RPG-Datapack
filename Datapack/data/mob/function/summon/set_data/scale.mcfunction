#> mob:summon/set_data/scale
# モブの大きさ(generic.scale)を設定

# 元のgeneric.scaleと補正値を取得
    execute store result score $MobScale Temporary run attribute @s generic.scale get 10000
    execute store result score $Multiplier Temporary run data get storage asset:mob Data.scale

# 補正値(%)に基づいて計算
    scoreboard players operation $MobScale Temporary *= $Multiplier Temporary
    scoreboard players operation $MobScale Temporary /= #100 Constant
    tellraw @a {"score":{"name": "$MobScale","objective": "Temporary"}}
    execute if entity @s[type=silverfish,predicate=lib:has_passenger] run scoreboard players set $MobScale Temporary 625

# generic.scaleに代入
    execute store result entity @s attributes[{id:"generic.scale"}].base double 0.0001 run scoreboard players get $MobScale Temporary
    tellraw @a {"nbt":"attributes","entity": "@s"}

# リセット
    scoreboard players reset $MobScale
    scoreboard players reset $Multiplier