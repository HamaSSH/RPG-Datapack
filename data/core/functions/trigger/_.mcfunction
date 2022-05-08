# 選択中スロット変更
    execute store result score $SelectedItemSlot Temporary run data get entity @s SelectedItemSlot
    execute unless score @s PreviousSlot = $SelectedItemSlot Temporary run function core:trigger/slot_changed
# スニーク
    execute if score @s sneak matches 1.. run function core:trigger/sneak/_
# 右クリック検知
    execute if score @s right_click matches 1.. run function core:trigger/right_click/_
# リログ処理
    execute as @a if score @s relog matches 1.. at @s run function core:trigger/relog
# リセット
    scoreboard players reset $SelectedItemSlot