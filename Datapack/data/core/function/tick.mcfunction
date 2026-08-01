#> core:tick
# 常時実行するコマンド群

# プレイヤー関連の#tick
    execute as @a at @s run function player:tick

# モブのtick処理
    execute as @e[type=#lib:every_mob,tag=Enemy] at @s run function mob:tick

# 表示用エンティティの自動片付け
    execute as @e[type=#lib:autokill,tag=AutoKill] at @s run function mob:manager/tick
