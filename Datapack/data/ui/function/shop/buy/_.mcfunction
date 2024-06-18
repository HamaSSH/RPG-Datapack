#> ui:shop/buy/_
# アイテム購入処理

# アイテムを与える
    function ui:return_item/give

# 金を払う
    execute on vehicle on vehicle on attacker run scoreboard players operation @s Gold -= $Price Temporary