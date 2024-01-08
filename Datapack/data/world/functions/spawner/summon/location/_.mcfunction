#> world:spawner/summon/location/_
# 召喚位置の決定

# 検索用のタグ
    tag @s add SpawnMarker

# SpawnRange内で座標を抽選
    function world:spawner/summon/location/random with storage world: Spawner.Data

# Posに抽選した座標を代入
    data modify storage world: SpawnPos set from entity @s Pos
    execute store result score $PosX Temporary run data get storage world: SpawnPos[0]
    execute store result score $PosY Temporary run data get storage world: SpawnPos[1]
    execute store result score $PosZ Temporary run data get storage world: SpawnPos[2]
    scoreboard players operation $PosX Temporary += $SpreadX Temporary
    scoreboard players operation $PosY Temporary += $SpreadY Temporary
    scoreboard players operation $PosZ Temporary += $SpreadZ Temporary
    execute store result storage world: SpawnPos[0] double 1 run scoreboard players get $PosX Temporary
    execute store result storage world: SpawnPos[1] double 1 run scoreboard players get $PosY Temporary
    execute store result storage world: SpawnPos[2] double 1 run scoreboard players get $PosZ Temporary
    data modify entity @s Pos set from storage world: SpawnPos

# リセット
    scoreboard players reset $SpreadX
    scoreboard players reset $SpreadY
    scoreboard players reset $SpreadZ
    scoreboard players reset $PosX
    scoreboard players reset $PosY
    scoreboard players reset $PosZ