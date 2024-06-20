#> player:buff/reset
# 全バフのリセット

execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] on origin run tag @s add BuffOwner
execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] on passengers run function player:buff/manager/remove
tag @s remove BuffOwner
tag @s remove IsBuffed