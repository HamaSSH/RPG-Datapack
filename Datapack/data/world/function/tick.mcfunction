#> world:tick
# ワールドとしてのtick処理

# 村人がプレイヤーの方向を向く
    execute as @e[type=villager] at @s if entity @p[distance=..8] run tp @s ~ ~ ~ facing entity @p

# スポナーのtick処理
    execute as @e[type=marker,tag=Spawner] at @s run function world:spawner/tick
    execute as @e[type=marker,tag=DungeonExit] at @s run function world:dungeon/exit/tick

# ダンジョン入口の演出
    particle reverse_portal 318 -45 -362 0.3 3 2 0.05 20 force

# タイマー計測
    execute as @a if score @s 3.5.DungeonTimer matches 0.. run scoreboard players add @s 3.5.DungeonTimer 1