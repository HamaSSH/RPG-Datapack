#> asset:mob/003.slime/death/_
# 死亡時の動作

# Sizeの1つ小さい2体に分裂
    execute store result score $SlimeSize Temporary run data get entity @s Size
    scoreboard players remove $SlimeSize Temporary 1
    execute if score $SlimeSize Temporary matches 0.. run scoreboard players set $MotionPower Temporary 10
    execute if score $SlimeSize Temporary matches 0.. run function asset:mob/003.slime/summon/_
    execute if score $SlimeSize Temporary matches 0.. run function asset:mob/003.slime/summon/_

# 演出
    execute if score $SlimeSize Temporary matches 0.. run playsound entity.slime.death hostile @a ~ ~ ~ 1.0 1.0
    execute if score $SlimeSize Temporary matches 0.. run particle spit ~ ~1 ~ 0.2 0.2 0.2 0.1 20
    execute if score $SlimeSize Temporary matches 0.. run tp @s ~ -1000 ~

# リセット
    scoreboard players reset $SlimeSize Temporary