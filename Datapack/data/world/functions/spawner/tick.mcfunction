#> world:spawner/tick
# ワールド内のスポナーMarkerの常時実行処理

particle flame ~ ~ ~ 0 1 0 0 4 force

execute if entity @p[gamemode=adventure] run scoreboard players add @s Timer 1
execute if score @s Timer matches 100 run function world:spawner/summon/init
execute if score @s Timer matches 100 run function world:spawner/summon/init
execute if score @s Timer matches 100 run scoreboard players reset @s Timer