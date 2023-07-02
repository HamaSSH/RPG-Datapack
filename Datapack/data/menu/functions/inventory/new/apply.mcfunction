##########
#>
#

# スロット0~26
    data remove block 0 0 0 Items
    data modify block 0 0 0 Items set from storage menu:temp Data.NewInv
    loot replace entity @p hotbar.0 27 mine 0 0 0 debug_stick
# スロット27~35
    data modify storage menu:temp Items set value []
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:27b}]
    data modify storage menu:temp Items[{Slot:27b}].Slot set value 0b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:28b}]
    data modify storage menu:temp Items[{Slot:28b}].Slot set value 1b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:29b}]
    data modify storage menu:temp Items[{Slot:29b}].Slot set value 2b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:30b}]
    data modify storage menu:temp Items[{Slot:30b}].Slot set value 3b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:31b}]
    data modify storage menu:temp Items[{Slot:31b}].Slot set value 4b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:32b}]
    data modify storage menu:temp Items[{Slot:32b}].Slot set value 5b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:33b}]
    data modify storage menu:temp Items[{Slot:33b}].Slot set value 6b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:34b}]
    data modify storage menu:temp Items[{Slot:34b}].Slot set value 7b
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:35b}]
    data modify storage menu:temp Items[{Slot:35b}].Slot set value 8b
    execute if data storage menu:temp Items[0] run data modify block 0 0 0 Items set from storage menu:temp Items
    execute if data storage menu:temp Items[0] run loot replace entity @p inventory.18 9 mine 0 0 0 debug_stick
# オフハンド
    data modify storage menu:temp Items set value []
    data modify storage menu:temp Items append from storage menu:temp Data.NewInv[{Slot:-106b}]
    data modify storage menu:temp Items[{Slot:-106b}].Slot set value 0b
    execute if data storage menu:temp Items[0] run data modify block 0 0 0 Items set from storage menu:temp Items
    execute if data storage menu:temp Items[0] run loot replace entity @p weapon.offhand 1 mine 0 0 0 debug_stick
# リセット
    data remove storage menu:temp Items