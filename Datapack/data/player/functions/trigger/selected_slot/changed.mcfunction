#> player:trigger/selected_slot/changed
# 選択スロットを変更した際の処理

# ステータスの更新
    tag @s add StatusUpdate

# 消費予定のアイテムデータのリセット
    execute unless entity @s[tag=ConsumeOffhand] if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset

# 武器にアイテムUUIDを設定
    execute if data storage player: SelectedItem.tag.Weapon unless data storage player: SelectedItem.tag.UUID run function player:item_data/set_uuid

# mainhandにあるアイテムのUUIDが変わった場合
    execute if data storage player: SelectedItem.tag.Weapon store result score @s ItemUUID run data get storage player: SelectedItem.tag.UUID
    execute unless score @s ItemUUID = @s PreviousItemUUID run function player:trigger/changed_mainhand
    scoreboard players reset @s ItemUUID

# 選択スロットの保存
    scoreboard players operation @s PreviousSlot = $SelectedItemSlot Temporary