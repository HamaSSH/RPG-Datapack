### アイテム関連の#tick

# アイテム採集の#tick
    execute as @e[type=marker,tag=Collect,distance=..6] at @s run function item:collect/tick
    execute as @e[type=armor_stand,tag=Collect] if data entity @s {PortalCooldown:1} run data modify entity @s CustomNameVisible set value 0b
# アイテム消費長押し検知チェック用のスコア加算
    execute as @a if entity @s[tag=ConsumingItem] run scoreboard players add @s ConsumingItem 1
# 懐中電灯
    execute as @a if score @s flash_timer matches 0.. at @s run function item:asset/1610/tick