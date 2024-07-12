#> world:dungeon/generate
# ダンジョンの生成

tellraw @a "新たなダンジョンが生成されました────\n"
$execute in world:dungeon positioned 0 100 $(ID)000 run forceload add ~ ~ ~ ~
$execute in world:dungeon positioned 0 100 $(ID)000 run place jigsaw world:root world:root 10
$execute in world:dungeon positioned 0 100 $(ID)000 as @e[type=marker,tag=DungeonSpawnerInit,distance=..100,sort=furthest,limit=1] run tag @s add DungeonEntrance
$execute in world:dungeon positioned 0 100 $(ID)000 run forceload remove ~ ~ ~ ~
execute in world:dungeon as @e[type=marker,tag=DungeonSpawnerInit] run function world:dungeon/init