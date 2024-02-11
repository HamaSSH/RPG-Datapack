#> world:spawner/set_data
# スポナーのデータ設定

# 初召喚までの時間
    execute store result score @s SpawnTimer run data get storage asset:spawner Data.Delay

# ダンジョンスポナーの初期化用
    execute if data storage asset:spawner Data{SpawnerType:"Dungeon"} run tag @s add DungeonSpawnerInit

# 基本情報
    tag @s add Spawner
    data modify entity @s data set from storage asset:spawner Data
    execute store result score @s HP run data get storage asset:spawner Data.HP

# リセット
    data remove storage asset:spawner Data