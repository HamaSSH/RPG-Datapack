#> ui:smithing/upgrade/clear/_
# 強化用アイテムを順次clear

# 強化用アイテムデータの整形
    data modify storage ui: Material set from storage ui: ItemData.UI.Upgrade[0]
    data remove storage ui: Material[].tag.display
    data remove storage ui: Material[].tag.UI

# 強化アイテムを持っているか1つずつ処理
    execute if data storage ui: Material[0] run function ui:smithing/upgrade/clear/rec