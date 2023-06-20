##########
#>
#

# もし矢筒を装備していたら弓矢を収納
    function combat:main/bow/quiver/check
    execute if entity @s[tag=Quiver] run function combat:main/bow/quiver/add_score
    execute unless entity @s[tag=Quiver] run function combat:main/bow/quiver/deequip
    tag @s remove Quiver
# 矢筒をスロットに装備した場合のみに矢にする
    data modify storage combat:temp Inventory set from entity @s Inventory
    data modify storage combat:temp Quiver append from storage combat:temp Inventory[{tag:{quiver:1b}}]
    execute if data storage combat:temp Quiver[{Slot:0b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.0 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:1b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.1 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:2b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.2 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:3b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.3 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:4b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.4 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:5b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.5 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:6b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.6 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:7b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.7 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:8b,id:"minecraft:arrow"}] run loot replace entity @s hotbar.8 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:9b,id:"minecraft:carrot_on_a_stick"}] if score @s Arrow matches 1.. run loot replace entity @s inventory.0 loot item:3101/arrow
    execute if data storage combat:temp Quiver[{Slot:10b,id:"minecraft:carrot_on_a_stick"}] if score @s Arrow matches 1.. run loot replace entity @s inventory.1 loot item:3101/arrow
    execute if data storage combat:temp Quiver[{Slot:11b,id:"minecraft:carrot_on_a_stick"}] if score @s Arrow matches 1.. run loot replace entity @s inventory.2 loot item:3101/arrow
    execute if data storage combat:temp Quiver[{Slot:12b,id:"minecraft:arrow"}] run loot replace entity @s inventory.3 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:13b,id:"minecraft:arrow"}] run loot replace entity @s inventory.4 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:14b,id:"minecraft:arrow"}] run loot replace entity @s inventory.5 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:15b,id:"minecraft:arrow"}] run loot replace entity @s inventory.6 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:16b,id:"minecraft:arrow"}] run loot replace entity @s inventory.7 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:17b,id:"minecraft:arrow"}] run loot replace entity @s inventory.8 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:18b,id:"minecraft:arrow"}] run loot replace entity @s inventory.9 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:19b,id:"minecraft:arrow"}] run loot replace entity @s inventory.10 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:20b,id:"minecraft:arrow"}] run loot replace entity @s inventory.11 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:21b,id:"minecraft:arrow"}] run loot replace entity @s inventory.12 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:22b,id:"minecraft:arrow"}] run loot replace entity @s inventory.13 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:23b,id:"minecraft:arrow"}] run loot replace entity @s inventory.14 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:24b,id:"minecraft:arrow"}] run loot replace entity @s inventory.15 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:25b,id:"minecraft:arrow"}] run loot replace entity @s inventory.16 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:26b,id:"minecraft:arrow"}] run loot replace entity @s inventory.17 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:27b,id:"minecraft:arrow"}] run loot replace entity @s inventory.18 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:28b,id:"minecraft:arrow"}] run loot replace entity @s inventory.19 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:29b,id:"minecraft:arrow"}] run loot replace entity @s inventory.20 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:30b,id:"minecraft:arrow"}] run loot replace entity @s inventory.21 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:31b,id:"minecraft:arrow"}] run loot replace entity @s inventory.22 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:32b,id:"minecraft:arrow"}] run loot replace entity @s inventory.23 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:33b,id:"minecraft:arrow"}] run loot replace entity @s inventory.24 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:34b,id:"minecraft:arrow"}] run loot replace entity @s inventory.25 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:35b,id:"minecraft:arrow"}] run loot replace entity @s inventory.26 loot item:3101/carrot_on_a_stick
    execute if data storage combat:temp Quiver[{Slot:-106b,id:"minecraft:arrow"}] run loot replace entity @s weapon.offhand loot item:3101/carrot_on_a_stick
# リセット
    data remove storage combat:temp Inventory
    data remove storage combat:temp Quiver
    advancement revoke @s only combat:bow/quiver
    advancement revoke @s only combat:bow/arrow