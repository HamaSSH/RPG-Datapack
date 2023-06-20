#> mob:manager/tick
# モブAsset関連のtick処理

# エンティティの処理
    execute if entity @s[tag=AutoKillVehicle] unless predicate mob:is_vehicle run function mob:manager/kill
    execute if entity @s[tag=AutoKillPassenger] unless predicate mob:is_passenger run function mob:manager/kill