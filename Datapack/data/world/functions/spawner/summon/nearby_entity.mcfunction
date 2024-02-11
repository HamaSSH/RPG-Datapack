#> world:spawner/summon/nearby_entity
# 周囲のEntity数を数える

$execute store result score $NearbyEntities Temporary if entity @e[type=#lib:every_mob,tag=Enemy,distance=..$(SpawnRange)]