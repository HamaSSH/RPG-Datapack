#> ui:smithing/upgrade/clear/_
# 強化用アイテムを順次clear

# 強化用アイテムデータの整形
    data modify storage ui: Material set from storage ui: ItemData.ui.upgrade[0]
    data remove storage ui: Material[].components.minecraft:custom_data.display
    data remove storage ui: Material[].components.minecraft:custom_data.ui

# 強化アイテムを持っているか1つずつ処理
    execute if data storage ui: Material[0] run function ui:smithing/upgrade/clear/rec