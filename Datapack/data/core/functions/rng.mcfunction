##########
#>
#

# AECのUUID[0]を取得
    summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
    execute store result score $RNG Temporary run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]
    kill @e[tag=RNG,distance=..0.01,limit=1]
# 最大値が設定されているかで場合分け
    execute store success score $RNGMaxSet Temporary run scoreboard players get $RNGMax Temporary
    execute if score $RNGMaxSet Temporary matches 0 run scoreboard players operation $RNG Temporary %= #100 Constant
    execute if score $RNGMaxSet Temporary matches 1 run scoreboard players operation $RNG Temporary %= $RNGMax Temporary
# リセット
    scoreboard players reset $RNGMaxSet
    scoreboard players reset $RNGMax