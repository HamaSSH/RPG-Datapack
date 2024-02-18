#> ui:smithing/upgrade/check/_
# 強化できるか(十分なアイテムを持っているか)確認

tag @s add Upgradable

# 強化用アイテムデータの整形
    data modify storage ui: UpgradeData set from storage ui: NewItems[{Slot:10b}].tag.UI.Upgrade
    data remove storage ui: UpgradeData[].tag.display
    data remove storage ui: UpgradeData[].tag.UI

# 強化アイテムを持っているか1つずつ確認
    execute if data storage ui: UpgradeData[0] run function ui:smithing/upgrade/check/rec
    execute if entity @s[tag=Upgradable] run function ui:smithing/upgrade/_