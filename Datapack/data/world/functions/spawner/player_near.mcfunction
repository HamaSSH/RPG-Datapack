#> world:spawner/player_near
# プレイヤーがRequiredPlayerRange内にいるか判定

# プレイヤーの座標データ取得
    data modify storage world: PlayerPos set from entity @s Pos
    execute store result score $PlayerX Temporary run data get storage world: PlayerPos[0] 10
    execute store result score $PlayerY Temporary run data get storage world: PlayerPos[1] 10
    execute store result score $PlayerZ Temporary run data get storage world: PlayerPos[2] 10

# スポナーの座標データ取得
    data modify storage world: SpawnerPos set from entity @e[type=marker,tag=Spawner,distance=..0.01,limit=1] Pos
    execute store result score $SpawnerX Temporary run data get storage world: SpawnerPos[0] 10
    execute store result score $SpawnerY Temporary run data get storage world: SpawnerPos[1] 10
    execute store result score $SpawnerZ Temporary run data get storage world: SpawnerPos[2] 10

# プレイヤーが範囲内にいるか判定
    scoreboard players operation $PlayerX Temporary -= $SpawnerX Temporary
    scoreboard players operation $PlayerY Temporary -= $SpawnerY Temporary
    scoreboard players operation $PlayerZ Temporary -= $SpawnerZ Temporary
    scoreboard players operation $PlayerX Temporary *= $PlayerX Temporary
    scoreboard players operation $PlayerY Temporary *= $PlayerY Temporary
    scoreboard players operation $PlayerZ Temporary *= $PlayerZ Temporary
    scoreboard players operation $Distance Temporary = $PlayerX Temporary
    scoreboard players operation $Distance Temporary += $PlayerY Temporary
    scoreboard players operation $Distance Temporary += $PlayerZ Temporary
    execute if score $Distance Temporary <= $RequiredPlayerRange Temporary run tag @e[type=marker,tag=Spawner,distance=..0.01] add PlayerIsNear

# リセット
    scoreboard players reset $SpawnerX Temporary
    scoreboard players reset $SpawnerY Temporary
    scoreboard players reset $SpawnerZ Temporary
    scoreboard players reset $PlayerX Temporary
    scoreboard players reset $PlayerY Temporary
    scoreboard players reset $PlayerZ Temporary
    scoreboard players reset $Distance Temporary