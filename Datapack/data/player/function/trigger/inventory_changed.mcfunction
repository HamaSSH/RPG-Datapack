#> player:trigger/inventory_changed
# インベントリ更新時の処理

# ステータスの更新
    tag @s add StatusUpdate

# SelectedItemが無ければ確実にメインハンドを空に(無いとバグる)
    execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with air

# 矢筒が装備されたか検知
    execute if data storage player: Inventory[].components.minecraft:custom_data.quiver unless entity @s[tag=NewInventorySet] run function player:combat/main/bow/quiver/_

# 消費予定のアイテムデータのリセット
    execute unless entity @s[tag=ConsumeOffhand] if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset

# 武器にアイテムUUIDを設定
    execute if data storage player: SelectedItem.components.minecraft:custom_data.weapon unless data storage player: SelectedItem.components.minecraft:custom_data.UUID run function player:item_data/set_uuid

# 図鑑更新
    execute if items entity @s weapon.* written_book[custom_data~{type:"fish_zukan"}] run function item:zukan/fish/update with storage global: fish

# mainhandにあるアイテムのUUIDが変わった場合
    execute if data storage player: SelectedItem.components.minecraft:custom_data.weapon store result score @s ItemUUID run data get entity @s SelectedItem.components.minecraft:custom_data.UUID
    execute unless score @s ItemUUID = @s PreviousItemUUID run function player:trigger/changed_mainhand
    scoreboard players reset @s ItemUUID