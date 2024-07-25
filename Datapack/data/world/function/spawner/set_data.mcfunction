#> world:spawner/set_data
# スポナーのデータ設定

tag @s add Spawner

# 初召喚までの時間
    execute store result score @s SpawnTimer run data get storage asset:spawner Data.Delay

# ダンジョンスポナーの初期化用
    execute if data storage asset:spawner Data{SpawnerType:"Dungeon"} run tag @s add DungeonSpawnerInit

# スポナー情報をdataに保存
    data modify entity @s data set from storage asset:spawner Data

# リセット
    data remove storage asset:spawner Data