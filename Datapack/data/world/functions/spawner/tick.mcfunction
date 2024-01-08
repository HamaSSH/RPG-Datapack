#> world:spawner/tick
# ワールド内のスポナーMarkerの常時実行処理

particle flame ~ ~ ~ 0 1 0 0 4 force

# プレイヤーが範囲内にいるか検知
    execute store result score $RequiredPlayerRange Temporary run data get entity @s data.RequiredPlayerRange 10
    scoreboard players operation $RequiredPlayerRange Temporary *= $RequiredPlayerRange Temporary
    execute as @p[gamemode=adventure,distance=..32] run function world:spawner/player_near

# プレイヤーが範囲内にいる場合はSpawnTimer減算
    execute if entity @s[tag=PlayerIsNear] run scoreboard players remove @s SpawnTimer 1
    execute if score @s SpawnTimer matches ..0 run function world:spawner/summon/init
    tag @s remove PlayerIsNear