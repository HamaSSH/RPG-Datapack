#> ui:smithing/upgrade/evolve/check
# アイテムを進化させるかのチェック

# 金系統のアイテムでそれが+2強化されているか(チェック済)
# item_idのgolden_以降を取得
    data modify storage ui: temp.item_type set string storage ui: ItemData.item_id 7
    function ui:smithing/upgrade/evolve/_ with storage ui: temp

# リセット
    data remove storage ui: temp