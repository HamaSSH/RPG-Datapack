#> world:dungeon/init
# ダンジョン関連の初期化

tag @s remove DungeonSpawnerInit
execute if entity @s[tag=DungeonEntrance] run tag @s remove Spawner