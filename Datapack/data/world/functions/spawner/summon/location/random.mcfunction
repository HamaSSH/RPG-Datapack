#> world:spawner/summon/location/random
# 召喚位置をランダムに決定

$execute store result score $SpreadX Temporary run random value -$(SpawnRange)..$(SpawnRange)
execute store result score $SpreadY Temporary run random value 0..2
$execute store result score $SpreadZ Temporary run random value -$(SpawnRange)..$(SpawnRange)