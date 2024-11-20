#> asset:mob/slime/init
# SizeとMotionの設定

# 分裂由来ではない召喚
    # サイズランダム
        execute unless score $SlimeSize Temporary matches 0.. run tag @s add Original
        execute unless score $SlimeSize Temporary matches 0.. store result score $SlimeSize Temporary run random value 0..2

# サイズによる可変のステータス
    execute if score $SlimeSize Temporary matches 0 store result storage asset:mob Data.Status.HP int 0.2 run data get storage asset:mob Data.Status.HP
    execute if score $SlimeSize Temporary matches 0 store result storage asset:mob Data.Status.Dmg int 0.2 run data get storage asset:mob Data.Status.Dmg
    execute if score $SlimeSize Temporary matches 1 store result storage asset:mob Data.Status.HP int 0.7 run data get storage asset:mob Data.Status.HP
    execute if score $SlimeSize Temporary matches 1 store result storage asset:mob Data.Status.Dmg int 0.7 run data get storage asset:mob Data.Status.Dmg
    execute store result entity @s Size int 1 run scoreboard players get $SlimeSize Temporary

# 分裂後5tick無敵
    execute unless entity @s[tag=Original] run tag @s add HurtTime
    execute unless entity @s[tag=Original] run scoreboard players set @s HurtTime 5

# データの初期化
    function mob:summon/init/_

# 分裂由来ではない召喚の場合リセット
    execute if entity @s[tag=Original] run scoreboard players reset $SlimeSize Temporary