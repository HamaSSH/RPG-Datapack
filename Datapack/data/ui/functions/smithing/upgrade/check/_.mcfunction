#> ui:smithing/upgrade/check/_
# 強化できるか(十分なアイテムを持っているか)確認

tag @s add Upgradable

# 強化用アイテムデータの整形
    data modify storage ui: UpgradeData set from storage ui: NewItems[{Slot:10b}].tag.UI.Upgrade
    data remove storage ui: UpgradeData[].tag.display
    data remove storage ui: UpgradeData[].tag.UI

# 最大で3回まで強化可能
    execute if data storage ui: NewItems[{Slot:10b}].tag{Grade:3} run tag @s remove Upgradable

# 強化アイテムを持っているか1つずつ確認
    execute if data storage ui: UpgradeData[0] run function ui:smithing/upgrade/check/rec
    execute if entity @s[tag=Upgradable] run function ui:smithing/upgrade/_