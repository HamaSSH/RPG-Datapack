#> world:dungeon/enter/_
# プレイヤーをダンジョンに入れる #TODO:[いつか] ダンジョンを別ディメンションに

$execute positioned 30000 101 $(ID)000 positioned as @n[type=marker,tag=DungeonEntrance] run tp @s ~ ~1 ~
$execute positioned 30000 101 $(ID)000 positioned as @n[type=marker,tag=DungeonEntrance] run playsound minecraft:entity.glow_squid.squirt master @s ~ ~ ~ 1 1.15
$execute positioned 30000 101 $(ID)000 positioned as @n[type=marker,tag=DungeonEntrance] run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 1.05
title @s times 40 40 20
title @s title ["\uE302",{"text":"始まりの遺跡","bold":true},"\uE303"]