#> world:dungeon/init
# ダンジョン関連の初期化

tag @s remove DungeonSpawnerInit
execute if entity @s[tag=DungeonEntrance] run tag @s remove Spawner

# 初召喚までの時間の設定
    execute store result score @s SpawnTimer run data get entity @s data.Delay

# 召喚できるモブ数の設定
    execute store result score @s HP run data get entity @s data.HP