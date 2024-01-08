#> world:spawner/summon/_
# モブを召喚！

$data modify storage asset:mob ID set from storage world: Spawner.Data.SpawnPotentials[$(Random)]

# 召喚位置の決定
    execute summon marker run function world:spawner/summon/location/_

# IDに応じたモブの召喚 #TODO: 召喚アニメーション＋その場に召喚されるような
    execute at @e[type=marker,tag=SpawnMarker,distance=..32] positioned ~0.5 ~ ~0.5 run function #asset:mob/summon
    data remove storage asset:mob ID

# リセット
    kill @e[type=marker,tag=SpawnMarker,distance=..32]