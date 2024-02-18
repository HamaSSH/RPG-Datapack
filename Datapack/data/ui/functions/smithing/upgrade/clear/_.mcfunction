#> ui:smithing/upgrade/clear/_
# 強化用アイテムを順次clear

# 強化用アイテムデータの整形
    data modify storage ui: UpgradeData set from storage ui: NewItems[{Slot:10b}].tag.UI.Upgrade
    data remove storage ui: UpgradeData[].tag.display
    data remove storage ui: UpgradeData[].tag.UI

# 強化アイテムを持っているか1つずつ処理
    execute if data storage ui: UpgradeData[0] run function ui:smithing/upgrade/clear/rec