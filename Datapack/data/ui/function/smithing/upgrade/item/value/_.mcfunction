#> ui:smithing/upgrade/item/value/_
# 一行ずつ強化値のLore表示

# 補正ステータスのLoreを生成
    data modify storage ui: SingleBonus set from storage ui: ItemData.bonus[0]
    execute store result score $Value Temporary run data get storage ui: SingleBonus.value
    execute unless data storage ui: SingleBonus{value:0} run function ui:smithing/upgrade/item/value/lore

# データの適用
    execute if data storage ui: SingleBonus{status:"HPR"} run function ui:smithing/upgrade/item/value/regen
    execute if data storage ui: SingleBonus{status:"MPR"} run function ui:smithing/upgrade/item/value/regen
    execute unless data storage ui: SingleBonus{status:"HPR"} unless data storage ui: SingleBonus{status:"MPR"} unless data storage ui: SingleBonus{value:0} run item modify entity @s container.15 ui:smithing/upgrade_value/_
    scoreboard players reset $Value Temporary

# 補正ステータスが尽きるまで再帰
    data remove storage ui: SingleBonus
    data remove storage ui: ItemData.bonus[0]
    execute if data storage ui: ItemData.bonus[] run function ui:smithing/upgrade/item/value/_