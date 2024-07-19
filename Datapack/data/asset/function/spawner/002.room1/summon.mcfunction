#> asset:spawner/002.room1/summon
# スポナーの召喚

# スポナーの情報
    data modify storage asset:spawner Data.SpawnPotentials set value [1,4,5,11]
    data modify storage asset:spawner Data.SpawnCount set value 2
    data modify storage asset:spawner Data.SpawnRange set value 4
    data modify storage asset:spawner Data.Delay set value 60
    data modify storage asset:spawner Data.MinSpawnDelay set value 70
    data modify storage asset:spawner Data.MaxSpawnDelay set value 150
    data modify storage asset:spawner Data.MaxNearbyEntities set value 2
    data modify storage asset:spawner Data.RequiredPlayerRange set value 8
    data modify storage asset:spawner Data.HP set value 4

# スポナーの種類
    data modify storage asset:spawner Data.SpawnerType set value "Dungeon"

# データの適用
    execute summon marker run function world:spawner/set_data