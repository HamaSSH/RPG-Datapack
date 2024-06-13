#> player:trigger/selected_slot/detect
# 選択スロットが変更されたか検知

# 変更検知
    execute store result score $SelectedItemSlot Temporary run data get entity @s SelectedItemSlot
    execute unless score $SelectedItemSlot Temporary = @s PreviousSlot run function player:trigger/selected_slot/changed

# リセット
    scoreboard players reset $SelectedItemSlot Temporary