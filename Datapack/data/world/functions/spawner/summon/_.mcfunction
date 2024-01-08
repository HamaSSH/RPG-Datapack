#> world:spawner/summon/_
# モブを召喚！

$data modify storage asset:mob ID set from storage world: Spawner.Data.SpawnPotentials[$(Random)]

# 召喚位置の決定
    execute summon marker run function world:spawner/summon/location/_

# IDに応じたモブの召喚 #TODO: 召喚アニメーション
    execute at @e[type=marker,tag=SpawnMarker,distance=..32] positioned ~0.5 ~ ~0.5 run function #asset:mob/summon
    execute at @e[type=marker,tag=SpawnMarker,distance=..32] run particle poof ~0.5 ~ ~0.5 0.2 0.3 0.2 0 20 force
    data remove storage asset:mob ID
    kill @e[type=marker,tag=SpawnMarker,distance=..32]

# まだ召喚する必要があるなら再帰
    scoreboard players remove $SpawnCount Temporary 1
    execute if score $SpawnCount Temporary matches 1.. run function world:spawner/summon/choose_mob
    execute if score $SpawnCount Temporary matches 1.. run function world:spawner/summon/_ with storage world: Spawner