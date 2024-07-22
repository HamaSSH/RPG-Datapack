#> world:dungeon/exit/check
# ダンジョンから帰れるかをチェック

execute positioned ~-10 ~-1 ~-10 unless entity @p[type=marker,tag=Spawner,dx=19,dy=9,dz=19] run tag @s add Activated
execute positioned ~-10 ~-1 ~-10 if entity @n[tag=Enemy,dx=19,dy=9,dz=19] run tag @s remove Activated

execute if entity @s[tag=Activated] run function world:dungeon/exit/tick