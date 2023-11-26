#> lib:inventory/set/accessories
# 装備品スロット(9~11)の操作

# スロット9~11
    data modify storage lib: Items set value []
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:9b}]
    data modify storage lib: Items[{Slot:9b}].Slot set value 0b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:10b}]
    data modify storage lib: Items[{Slot:10b}].Slot set value 1b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:11b}]
    data modify storage lib: Items[{Slot:11b}].Slot set value 2b
    execute if data storage lib: Items[0] run data modify block 0 0 0 Items set from storage lib: Items
    execute if data storage lib: Items[0] run loot replace entity @s inventory.0 3 mine 0 0 0 debug_stick

# リセット
    data remove storage lib: NewInventory
    data remove storage lib: Items