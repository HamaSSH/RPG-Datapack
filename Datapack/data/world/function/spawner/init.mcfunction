#> world:spawner/init
# スポナーの初期化(モブ召喚の準備)

tag @s add Ready

# 初召喚までの時間の設定
    execute store result score @s SpawnTimer run data get entity @s data.Delay

# 召喚できるモブ数の設定
    execute store result score @s HP run data get entity @s data.HP