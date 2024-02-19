#> ui:smithing/upgrade/item/bonus_status
# アイテムのステータスを強化

$execute store result storage ui: NewItems[{Slot:10b}].tag.Bonus[{Status:$(Status)}].Value int 1.3 run data get storage ui: UpgradeData.Bonus[0].Value

# 強化用アイテムが尽きるまで再帰
    data remove storage ui: UpgradeData.Bonus[0]
    execute unless data storage ui: UpgradeData.Bonus[] run data remove storage ui: UpgradeData.Bonus
    execute if data storage ui: UpgradeData.Bonus[] run function ui:smithing/upgrade/item/bonus_status with storage ui: UpgradeData.Bonus[0]