#> world:dungeon/generate
# ダンジョンの生成

tellraw @a "新たなダンジョンが生成されました────\n"
$execute positioned 20000 100 $(ID)000 run forceload add ~ ~ ~ ~
$execute positioned 20000 100 $(ID)000 run place jigsaw world:root world:root 10
$execute positioned 20000 100 $(ID)000 as @e[type=marker,tag=DungeonSpawnerInit,distance=..100,sort=furthest,limit=1] run tag @s add DungeonEntrance
$execute positioned 20000 100 $(ID)000 run forceload remove ~ ~ ~ ~
execute as @e[type=marker,tag=DungeonSpawnerInit] run function world:dungeon/init