#> asset:spawner/000/summon
# スポナーの召喚

# スポナーの情報
    data modify storage asset:spawner Data.SpawnPotentials set value [1,3,4]
    data modify storage asset:spawner Data.SpawnCount set value 1
    data modify storage asset:spawner Data.SpawnRange set value 4
    data modify storage asset:spawner Data.Delay set value 20
    data modify storage asset:spawner Data.MinSpawnDelay set value 200
    data modify storage asset:spawner Data.MaxSpawnDelay set value 400
    data modify storage asset:spawner Data.MaxNearbyEntities set value 2
    data modify storage asset:spawner Data.RequiredPlayerRange set value 16

# データの適用
    execute summon marker run function world:spawner/set_data