#> asset:magic/5103.flame_pillar/tick/pillar/_
# フレイムピラー1つ1つの処理

execute if score @s Timer matches 3 run data modify entity @s Marker set value 1b
execute if score @s Timer matches 20 unless block ~ ~ ~ #lib:underwater run function asset:magic/5103.flame_pillar/tick/pillar/explode
execute if score @s Timer matches 20 if block ~ ~ ~ #lib:underwater run function asset:magic/5103.flame_pillar/tick/pillar/underwater