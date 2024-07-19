#> asset:spawner/004.room3/summon
# スポナーの召喚

# スポナーの情報
    data modify storage asset:spawner Data.SpawnPotentials set value [1,3,4,5,13,14]
    data modify storage asset:spawner Data.SpawnCount set value 2
    data modify storage asset:spawner Data.SpawnRange set value 6
    data modify storage asset:spawner Data.Delay set value 40
    data modify storage asset:spawner Data.MinSpawnDelay set value 100
    data modify storage asset:spawner Data.MaxSpawnDelay set value 150
    data modify storage asset:spawner Data.MaxNearbyEntities set value 3
    data modify storage asset:spawner Data.RequiredPlayerRange set value 8
    data modify storage asset:spawner Data.HP set value 4

# スポナーの種類
    data modify storage asset:spawner Data.SpawnerType set value "Dungeon"

# データの適用
    execute summon marker run function world:spawner/set_data