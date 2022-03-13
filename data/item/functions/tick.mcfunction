### アイテム関連の#tick

# アイテム採集の#tick
    execute as @e[type=marker,tag=Collect,distance=..6] at @s run function item:collect/tick
    execute as @e[type=armor_stand,tag=Collect] if data entity @s {PortalCooldown:1} run data modify entity @s CustomNameVisible set value 0b