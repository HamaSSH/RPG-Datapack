#> world:dungeon/exit/check
# ダンジョンから帰れるかをチェック

execute unless entity @e[type=marker,tag=Spawner,distance=..10] run tag @s add Activated
execute if entity @n[tag=Enemy,distance=..12] run tag @s remove Activated

execute if entity @s[tag=Activated] run function world:dungeon/exit/tick