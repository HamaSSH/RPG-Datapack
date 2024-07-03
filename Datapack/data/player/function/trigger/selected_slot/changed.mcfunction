#> player:trigger/selected_slot/changed
# 選択スロットを変更した際の処理

# ステータスの更新
    tag @s add StatusUpdate

# 消費予定のアイテムデータのリセット
    execute unless entity @s[tag=ConsumeOffhand] if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset

# 図鑑更新
    execute if items entity @s weapon.* written_book[custom_data~{zukan:"fish"}] run function item:zukan/fish/update with storage global: fish

# 武器にアイテムUUIDを設定
    execute if data storage player: SelectedItem.components.minecraft:custom_data.weapon unless data storage player: SelectedItem.components.minecraft:custom_data.UUID run function player:item_data/set_uuid

# mainhandにあるアイテムのUUIDが変わった場合
    execute if data storage player: SelectedItem.components.minecraft:custom_data.weapon store result score @s ItemUUID run data get storage player: SelectedItem.components.minecraft:custom_data.UUID
    execute unless score @s ItemUUID = @s PreviousItemUUID run function player:trigger/changed_mainhand
    scoreboard players reset @s ItemUUID

# 選択スロットの保存
    scoreboard players operation @s PreviousSlot = $SelectedItemSlot Temporary