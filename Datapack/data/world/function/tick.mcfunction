#> world:tick
# ワールドとしてのtick処理

# スポナーのtick処理
    execute as @e[type=marker,tag=Spawner] at @s run function world:spawner/tick
    execute as @e[type=marker,tag=DungeonExit] at @s run function world:dungeon/exit/tick

# ダンジョン入口の演出
    particle reverse_portal 664 152 -830 2 6 0.3 0.05 20 force

# タイマー計測
    execute as @a if score @s 3.5.DungeonTimer matches 0.. run scoreboard players add @s 3.5.DungeonTimer 1