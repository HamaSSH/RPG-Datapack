#> asset:magic/5103.flame_pillar/tick/pillar/_
# フレイムピラー1つ1つの処理

execute if score @s Timer matches 3 run data modify entity @s Marker set value 1b
execute if score @s Timer matches 20 run function asset:magic/5103.flame_pillar/tick/pillar/explode