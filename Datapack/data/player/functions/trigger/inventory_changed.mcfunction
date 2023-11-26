#> player:trigger/inventory_changed
# インベントリ更新時の処理

# ステータスの更新
    tag @s add StatusUpdate

# SelectedItemが無ければ確実にメインハンドを空に(無いとバグる)
    execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with air

# 矢筒が装備されたか検知
    execute if data storage player: Inventory[].tag.Quiver run function player:combat/main/bow/quiver/_

# 弓矢スコアの加算
    execute if data storage player: Accessories[].tag.Quiver run function player:combat/main/bow/arrow/pickup

# 消費予定のアイテムデータのリセット
    execute unless entity @s[tag=ConsumeOffhand] if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset