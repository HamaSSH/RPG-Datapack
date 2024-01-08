#> world:spawner/summon/init
# スポナーの召喚処理

# データ取得
    data modify storage world: Spawner.Data set from entity @s data
    execute store result score $SpawnCount Temporary run data get storage world: Spawner.Data.SpawnCount

# モブのエントリーから1つを抽選
    function world:spawner/summon/choose_mob

# 抽選された値に応じたモブ召喚
    function world:spawner/summon/_ with storage world: Spawner

# リセット
    data remove storage world: Spawner
    scoreboard players reset $Entry Temporary
    scoreboard players reset $SpawnCount Temporary
    scoreboard players reset @s Timer