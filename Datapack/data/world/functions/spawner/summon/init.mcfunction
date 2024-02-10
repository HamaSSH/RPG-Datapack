#> world:spawner/summon/init
# スポナーの召喚処理

# データ取得
    data modify storage world: Spawner.Data set from entity @s data
    execute store result score $SpawnCount Temporary run data get storage world: Spawner.Data.SpawnCount
    execute if score @s HP < $SpawnCount Temporary run scoreboard players operation $SpawnCount Temporary = @s HP
    execute store result score $MaxNearbyEntities Temporary run data get storage world: Spawner.Data.MaxNearbyEntities

# モブのエントリーから1つを抽選
    function world:spawner/summon/choose_mob

# 抽選された値に応じたモブ召喚
    function world:spawner/summon/nearby_entity with storage world: Spawner.Data
    execute if score $NearbyEntities Temporary < $MaxNearbyEntities Temporary run function world:spawner/summon/_ with storage world: Spawner

# 新しいSpawnTimerの抽選
    function world:spawner/summon/set_timer with storage world: Spawner.Data

# HPが0になったらkill
    execute if score @s HP matches ..0 run playsound block.amethyst_block.break master @a ~ ~ ~
    execute if score @s HP matches ..0 run kill @s

# リセット
    data remove storage world: Spawner
    scoreboard players reset $SpawnCount Temporary
    scoreboard players reset $MaxNearbyEntities Temporary
    scoreboard players reset $NearbyEntities Temporary
    scoreboard players reset @s Timer