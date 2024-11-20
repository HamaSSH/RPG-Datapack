#> asset:spawner/.example/summon
# スポナーの召喚

# スポナーの情報
    data modify storage asset:spawner Data.SpawnPotentials set value [zombie,skeleton]
    data modify storage asset:spawner Data.SpawnCount set value 2
    data modify storage asset:spawner Data.SpawnRange set value 10
    data modify storage asset:spawner Data.Delay set value 20
    data modify storage asset:spawner Data.MinSpawnDelay set value 100
    data modify storage asset:spawner Data.MaxSpawnDelay set value 200
    data modify storage asset:spawner Data.MaxNearbyEntities set value 4
    data modify storage asset:spawner Data.RequiredPlayerRange set value 14
    data modify storage asset:spawner Data.HP set value 2147483647

# スポナーの種類
    data modify storage asset:spawner Data.SpawnerType set value "Field"

# データの適用
    execute summon marker run function world:spawner/set_data