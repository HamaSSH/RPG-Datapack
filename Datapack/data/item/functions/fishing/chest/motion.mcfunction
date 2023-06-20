##########
#>
#

# プレイヤーの位置取得
    execute as @a if score @s PlayerID = $PlayerID Temporary run data modify storage item:fishing PlayerPos set from entity @s Pos
# storage → スコア
    execute store result score $FishPosX Temporary run data get storage item:fishing FishPos[0] 1000
    execute store result score $FishPosY Temporary run data get storage item:fishing FishPos[1] 1000
    execute store result score $FishPosZ Temporary run data get storage item:fishing FishPos[2] 1000
    execute store result score $PlayerPosX Temporary run data get storage item:fishing PlayerPos[0] 1000
    execute store result score $PlayerPosY Temporary run data get storage item:fishing PlayerPos[1] 1000
    execute store result score $PlayerPosZ Temporary run data get storage item:fishing PlayerPos[2] 1000
# ベクトル計算
    scoreboard players operation $PlayerPosX Temporary -= $FishPosX Temporary
    scoreboard players operation $PlayerPosY Temporary -= $FishPosY Temporary
    scoreboard players operation $PlayerPosZ Temporary -= $FishPosZ Temporary
# 補正
    scoreboard players add $PlayerPosY Temporary 7000
# Motionの代入
    data modify storage item:fishing Motion set value [0.0d, 0.0d, 0.0d]
    execute store result storage item:fishing Motion[0] double 0.00017 run scoreboard players get $PlayerPosX Temporary
    execute store result storage item:fishing Motion[1] double 0.0001 run scoreboard players get $PlayerPosY Temporary
    execute store result storage item:fishing Motion[2] double 0.00017 run scoreboard players get $PlayerPosZ Temporary
    data modify entity @s Motion set from storage item:fishing Motion
# リセット
    data remove storage item:fishing PlayerPos
    data remove storage item:fishing Motion
    scoreboard players reset $FishPosX Temporary
    scoreboard players reset $FishPosY Temporary
    scoreboard players reset $FishPosZ Temporary
    scoreboard players reset $PlayerPosX Temporary
    scoreboard players reset $PlayerPosY Temporary
    scoreboard players reset $PlayerPosZ Temporary