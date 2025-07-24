#> world:tick
# ワールドとしてのtick処理

# フラグ管理
    function world:flags/_

# 村人がプレイヤーの方向を向く
    execute as @e[type=villager] at @s if entity @p[distance=..8] run tp @s ~ ~ ~ facing entity @p

# スポナーのtick処理
    execute as @e[type=marker,tag=Spawner] at @s run function world:spawner/tick
    execute as @e[type=marker,tag=DungeonExit] at @s run function world:dungeon/exit/check

# ダンジョン入口の演出 #TODO: 座標
    particle reverse_portal 318 -45 -362 0.3 3 2 0.05 20 force