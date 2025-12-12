#> player:trigger/selected_slot/changed
# 選択スロットを変更した際の処理

# ステータスの更新
    tag @s add StatusUpdate

# 選択スロットの保存
    scoreboard players operation @s PreviousSlot = $SelectedItemSlot Temporary