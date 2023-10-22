#> asset:mob/003.slime/summon/init
# SizeとMotionの設定

# 分裂由来の召喚
    execute if score $SlimeSize Temporary matches 0.. at @s facing entity @p feet run function lib:motion/apply
# 分裂由来ではない召喚
    # サイズランダム
        execute unless score $SlimeSize Temporary matches 0.. store result score $SlimeSize Temporary run random value 0..2

# サイズによる可変のステータス
    execute if score $SlimeSize Temporary matches 0 store result storage asset:mob Data.Status.hp int 0.2 run data get storage asset:mob Data.Status.hp
    execute if score $SlimeSize Temporary matches 0 store result storage asset:mob Data.Status.ad int 0.2 run data get storage asset:mob Data.Status.ad
    execute if score $SlimeSize Temporary matches 1 store result storage asset:mob Data.Status.hp int 0.7 run data get storage asset:mob Data.Status.hp
    execute if score $SlimeSize Temporary matches 1 store result storage asset:mob Data.Status.ad int 0.7 run data get storage asset:mob Data.Status.ad
    execute store result entity @s Size int 1 run scoreboard players get $SlimeSize Temporary

# データの初期化
    function mob:summon/set_data

# リセット
    scoreboard players reset $SlimeSize Temporary
    scoreboard players reset $RNG Temporary