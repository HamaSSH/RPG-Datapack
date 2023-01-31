##########
#>
#

# 既にスロットに配置されているアイテムは除外
    execute if score $Rarity Temporary matches 2.. if data storage menu:temp Data.Items[{Slot:11b,Count:1b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}]
    execute if score $Rarity Temporary matches 3.. if data storage menu:temp Data.Items[{Slot:12b,Count:1b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}]
    execute if score $Rarity Temporary matches 4.. if data storage menu:temp Data.Items[{Slot:13b,Count:1b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}]
    execute if score $Rarity Temporary matches 2.. if data storage menu:temp Data.Items[{Slot:11b,Count:1b,tag:{menu:{combinable:1b}}}] run data remove storage menu:temp Data.combine[{Slot:11b,tag:{menu:{combinable:1b}}}]
    execute if score $Rarity Temporary matches 3.. if data storage menu:temp Data.Items[{Slot:12b,Count:1b,tag:{menu:{combinable:1b}}}] run data remove storage menu:temp Data.combine[{Slot:12b,tag:{menu:{combinable:1b}}}]
    execute if score $Rarity Temporary matches 4.. if data storage menu:temp Data.Items[{Slot:13b,Count:1b,tag:{menu:{combinable:1b}}}] run data remove storage menu:temp Data.combine[{Slot:13b,tag:{menu:{combinable:1b}}}]
# 順にスロットに配置(実際はメニュー更新時に配置)
    execute if score $Rarity Temporary matches 2.. unless data storage menu:temp Data.Items[{Slot:11b,Count:1b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/put_items/11
    execute if score $Rarity Temporary matches 3.. unless data storage menu:temp Data.Items[{Slot:12b,Count:1b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/put_items/12
    execute if score $Rarity Temporary matches 4.. unless data storage menu:temp Data.Items[{Slot:13b,Count:1b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/put_items/13
# スロットが一杯であれば返却
    execute unless score @s page matches 10 run execute if data storage menu:temp Data.combine[] run data modify storage menu:temp Data.return set from storage menu:temp Data.combine
    execute unless score @s page matches 10 run function menu:return_item/_