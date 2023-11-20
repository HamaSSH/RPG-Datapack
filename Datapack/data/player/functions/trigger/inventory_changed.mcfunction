#> player:trigger/inventory_changed
# インベントリ更新時の処理

# ステータスの更新
    tag @s add StatusUpdate

# SelectedItemが無ければ確実にメインハンドを空に(無いとバグる)
    execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with air

# 消費予定のアイテムデータのリセット
    execute if entity @s[tag=UsingConsumables] run function player:trigger/using_item/consumables/reset

# リセット
    advancement revoke @s only player:trigger/inventory_changed