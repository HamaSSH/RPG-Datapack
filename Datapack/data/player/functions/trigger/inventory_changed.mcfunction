#> player:trigger/inventory_changed
# インベントリ更新時の処理

# ステータスの更新
    tag @s add StatusUpdate

# リセット
    advancement revoke @s only player:trigger/inventory_changed