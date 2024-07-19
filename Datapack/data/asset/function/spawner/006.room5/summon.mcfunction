#> asset:spawner/006.room5/summon
# スポナーの召喚

# スポナーの情報
    data modify storage asset:spawner Data.SpawnPotentials set value [7,9,11]
    data modify storage asset:spawner Data.SpawnCount set value 2
    data modify storage asset:spawner Data.SpawnRange set value 5
    data modify storage asset:spawner Data.Delay set value 40
    data modify storage asset:spawner Data.MinSpawnDelay set value 40
    data modify storage asset:spawner Data.MaxSpawnDelay set value 120
    data modify storage asset:spawner Data.MaxNearbyEntities set value 5
    data modify storage asset:spawner Data.RequiredPlayerRange set value 7
    data modify storage asset:spawner Data.HP set value 5

# スポナーの種類
    data modify storage asset:spawner Data.SpawnerType set value "Dungeon"

# データの適用
    execute summon marker run function world:spawner/set_data