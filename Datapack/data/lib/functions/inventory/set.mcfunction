#> lib:inventory/set
# プレイヤーのインベントリを設定

# ホットバー、スロット9~26
    data modify block 0 0 0 Items set from storage lib: NewInventory
    loot replace entity @s hotbar.0 27 mine 0 0 0 debug_stick

# スロット27~35
    data modify storage lib: Items set value []
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:27b}]
    data modify storage lib: Items[{Slot:27b}].Slot set value 0b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:28b}]
    data modify storage lib: Items[{Slot:28b}].Slot set value 1b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:29b}]
    data modify storage lib: Items[{Slot:29b}].Slot set value 2b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:30b}]
    data modify storage lib: Items[{Slot:30b}].Slot set value 3b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:31b}]
    data modify storage lib: Items[{Slot:31b}].Slot set value 4b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:32b}]
    data modify storage lib: Items[{Slot:32b}].Slot set value 5b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:33b}]
    data modify storage lib: Items[{Slot:33b}].Slot set value 6b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:34b}]
    data modify storage lib: Items[{Slot:34b}].Slot set value 7b
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:35b}]
    data modify storage lib: Items[{Slot:35b}].Slot set value 8b
    execute if data storage lib: Items[0] run data modify block 0 0 0 Items set from storage lib: Items
    execute if data storage lib: Items[0] run loot replace entity @s inventory.18 9 mine 0 0 0 debug_stick

# オフハンド
    data modify storage lib: Items set value []
    data modify storage lib: Items append from storage lib: NewInventory[{Slot:-106b}]
    data modify storage lib: Items[{Slot:-106b}].Slot set value 0b
    execute if data storage lib: Items[0] run data modify block 0 0 0 Items set from storage lib: Items
    execute if data storage lib: Items[0] run loot replace entity @s weapon.offhand 1 mine 0 0 0 debug_stick

# リセット
    data remove storage lib: NewInventory
    data remove storage lib: Items