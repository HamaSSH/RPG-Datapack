#> world:spawner/set_data
# スポナーのデータ設定

# 初召喚までの時間
    execute store result score @s SpawnTimer run data get storage asset:spawner Data.Delay
    data remove storage asset:spawner Data.Delay

# 基本情報
    tag @s add Spawner
    data modify entity @s data set from storage asset:spawner Data

# リセット
    data remove storage asset:spawner Data