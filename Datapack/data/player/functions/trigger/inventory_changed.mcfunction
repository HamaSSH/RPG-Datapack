#> player:trigger/inventory_changed
# インベントリ更新時の処理

# ステータスの更新
    tag @s add StatusUpdate

# SelectedItemが無ければ確実にメインハンドを空に(無いとバグる)
    execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with air

# 矢筒が装備されたか検知
    execute if data storage player: Inventory[].tag.Quiver unless entity @s[tag=NewInventorySet] run function player:combat/main/bow/quiver/_

# ゴールドの取得処理
    execute if data storage player: Inventory[].tag{ItemType:"Gold"} run function player:status/gold/pickup

# 消費予定のアイテムデータのリセット
    execute unless entity @s[tag=ConsumeOffhand] if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset

# 武器にアイテムUUIDを設定
    execute if data storage player: SelectedItem.tag.Weapon unless data storage player: SelectedItem.tag.UUID run function player:item_data/set/uuid

# mainhandにあるアイテムのUUIDが変わった場合
    execute if data storage player: SelectedItem.tag.Weapon store result score @s ItemUUID run data get entity @s SelectedItem.tag.UUID
    execute unless score @s ItemUUID = @s PreviousItemUUID run function player:trigger/changed_mainhand
    scoreboard players reset @s ItemUUID