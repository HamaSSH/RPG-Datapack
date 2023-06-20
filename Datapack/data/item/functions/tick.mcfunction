##########
#>
#

### アイテム関連の#tick

# 採集スポット用のMarkerの召喚
    execute as @e[type=armor_stand,tag=CollectMarker] at @s run summon marker ~ ~0.8 ~ {Tags:["CollectMarker"]}
    kill @e[type=armor_stand,tag=CollectMarker]
# アイテム採集の#tick
    execute as @e[type=marker,tag=CollectMarker,distance=..6] at @s run function item:collect/tick
    execute as @e[type=armor_stand,tag=Collect] if data entity @s {PortalCooldown:1} run data modify entity @s CustomNameVisible set value 0b
# アイテム消費長押し検知チェック用のスコア加算
    execute as @a if entity @s[tag=ConsumingItem] run scoreboard players add @s ConsumingItem 1
# 懐中電灯
    execute as @a if score @s flash_timer matches 0.. at @s run function item:asset/1610/tick
# 釣り
    #execute as @e[type=item] at @s if data entity @s Item.tag{fishing:1b} run function item:fishing/chest/_
    #execute as @e[tag=Chest] at @s if data entity @s {OnGround:1b} run function item:fishing/chest/animation
    #execute as @e[tag=Top] at @s run function item:fishing/chest/particle

    execute as @e[type=fishing_bobber] if entity @s[tag=!FishingBobber] at @s if block ~ ~ ~ lava run function item:fishing/magma/init
    execute as @e[type=fishing_bobber,tag=FishingBobber] at @s run function item:fishing/magma/bobber
    execute as @e[type=item] if data entity @s Item.tag{MagmaBobber:1b} at @s unless entity @e[type=minecraft:fishing_bobber,distance=..2,limit=1] run kill @s

# TODO: アイテムのタグrarity,buy,sell辺りを → Rarity,Buy,Sellに変更する