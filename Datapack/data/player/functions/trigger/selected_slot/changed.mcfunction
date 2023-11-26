#> player:trigger/selected_slot/changed
# 選択スロットを変更した際の処理

# ステータスの更新
    tag @s add StatusUpdate

# 消費予定のアイテムデータのリセット
    execute unless entity @s[tag=ConsumeOffhand] if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset

# 選択スロットの保存
    scoreboard players operation @s PreviousSlot = $SelectedItemSlot Temporary