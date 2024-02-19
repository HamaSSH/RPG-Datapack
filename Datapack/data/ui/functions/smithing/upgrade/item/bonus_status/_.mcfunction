#> ui:smithing/upgrade/item/bonus_status/_
# アイテムのステータスを強化

# 補正ステータスのLoreを生成
    data modify storage ui: SingleBonus set from storage ui: ItemData.Bonus[0]
    function ui:smithing/upgrade/item/bonus_status/lore

# データの適用
    function ui:smithing/upgrade/item/bonus_status/apply with storage ui: ItemData.Bonus[0]

# 強化用アイテムが尽きるまで再帰
    data remove storage ui: SingleBonus
    data remove storage ui: ItemData.Bonus[0]
    execute unless data storage ui: ItemData.Bonus[] run data remove storage ui: ItemData.Bonus
    execute if data storage ui: ItemData.Bonus[] run function ui:smithing/upgrade/item/bonus_status/_