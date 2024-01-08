#> world:spawner/tick
# ワールド内のスポナーMarkerの常時実行処理

particle flame ~ ~ ~ 0 1 0 0 4 force

# TimerがSpawnTimer分加算されれば召喚処理
    execute if entity @p[gamemode=adventure] run scoreboard players add @s Timer 1
    execute if score @s Timer = @s SpawnTimer run function world:spawner/summon/init