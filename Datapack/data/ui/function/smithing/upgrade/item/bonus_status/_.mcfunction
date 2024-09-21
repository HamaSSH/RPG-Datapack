#> ui:smithing/upgrade/item/bonus_status/_
# アイテムのステータスを強化 #TODO:[いつか] 鍛冶のアイテム周りの操作をui:smithing/itemにまとめたい

# 補正ステータスのLoreを生成
    data modify storage ui: SingleBonus set from storage ui: ItemData.bonus[0]
    execute store result score $Value Temporary run data get storage ui: SingleBonus.value
    execute unless data storage ui: SingleBonus{value:0} run function ui:smithing/upgrade/item/bonus_status/lore

# データの適用
    execute if data storage ui: SingleBonus{status:"HPR"} run function ui:smithing/upgrade/item/bonus_status/regen/_
    execute if data storage ui: SingleBonus{status:"MPR"} run function ui:smithing/upgrade/item/bonus_status/regen/_
    execute unless data storage ui: SingleBonus{status:"HPR"} unless data storage ui: SingleBonus{status:"MPR"} unless data storage ui: SingleBonus{value:0} run function ui:smithing/upgrade/item/bonus_status/apply with storage ui: SingleBonus
    scoreboard players reset $Value Temporary

# 補正ステータスが尽きるまで再帰
    data remove storage ui: SingleBonus
    data remove storage ui: ItemData.bonus[0]
    execute if data storage ui: ItemData.bonus[] run function ui:smithing/upgrade/item/bonus_status/_