# storage DataにプレイヤーのInventoryを代入
    data modify storage combat:temp Data set from entity @s Inventory
# 矢筒をもっているか検知
    execute if data storage combat:temp Data[{Slot:9b}].tag{quiver:1b} run tag @s add Quiver
    execute if data storage combat:temp Data[{Slot:10b}].tag{quiver:1b} run tag @s add Quiver
    execute if data storage combat:temp Data[{Slot:11b}].tag{quiver:1b} run tag @s add Quiver
# リセット
    data remove storage combat:temp Data