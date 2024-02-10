#> world:dungeon/generate
# ダンジョンの生成

tellraw @a "新たなダンジョンが生成されました────\n"
$execute positioned 0 100 $(ID)000 run place jigsaw world:test root 7
execute as @e[tag=DungeonSpawnerInit] run function world:dungeon/init