#> player:item_data/enchant/reset
# エンチャント効果のリセット

execute unless data storage player: Enchant[{id:fire_protection}] run tag @s remove FireProtEnch
execute unless data storage player: Enchant[{id:fire_protection}] positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] on passengers if data entity @s data.buff{effect:"fire_resistance"} run function player:buff/manager/remove