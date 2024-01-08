#> world:spawner/summon/init
# スポナーの召喚処理

data modify storage world: Spawner.Data set from entity @s data
execute store result score $Entry Temporary if data storage world: Spawner.Data.SpawnPotentials[]

# モブのエントリーから1つを抽選
    execute store result storage world: Spawner.Entry int 1 run scoreboard players remove $Entry Temporary 1
    execute if score $Entry Temporary matches 1.. run function world:spawner/summon/random with storage world: Spawner
    execute if score $Entry Temporary matches 0 run data modify storage world: Spawner.Random set value 0

# 抽選された値に応じたモブ召喚
    function world:spawner/summon/_ with storage world: Spawner

# リセット
    data remove storage world: Spawner
    scoreboard players reset $Entry Temporary