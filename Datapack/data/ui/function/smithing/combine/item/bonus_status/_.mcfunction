#> ui:smithing/combine/item/bonus_status/_
# 合成後の補正ステータス値を設定

# 補正ステータス値の取得
    execute store result score $Amplifier Temporary run data get storage ui: ItemData.base_bonus[0].value
    execute store result storage ui: ItemData.bonus[0].base_amplifier int 1 run scoreboard players get $Amplifier Temporary
    execute if data storage ui: ItemData.combine_bonus[] run function ui:smithing/upgrade/item/bonus_status/extra with storage ui: ItemData.bonus[0]
    execute store result storage ui: ItemData.bonus[0].amplifier int 1 run scoreboard players get $Amplifier Temporary

# 補正ステータスのLoreを生成
    data modify storage ui: SingleBonus set from storage ui: ItemData.bonus[0]
    execute unless data storage ui: SingleBonus{amplifier:0} run function ui:smithing/upgrade/item/bonus_status/lore
    scoreboard players reset $Amplifier Temporary

# データの適用
    execute if data storage ui: SingleBonus{status:"HPR"} run function ui:smithing/combine/item/bonus_status/regen/_
    execute if data storage ui: SingleBonus{status:"MPR"} run function ui:smithing/combine/item/bonus_status/regen/_
    execute unless data storage ui: SingleBonus{status:"HPR"} unless data storage ui: SingleBonus{status:"MPR"} unless data storage ui: SingleBonus{amplifier:0} run function ui:smithing/combine/item/bonus_status/apply with storage ui: ItemData.bonus[0]

# 補正ステータスが尽きるまで再帰
    data remove storage ui: SingleBonus
    data remove storage ui: ItemData.base_bonus[0]
    data remove storage ui: ItemData.bonus[0]
    execute unless data storage ui: ItemData.bonus[] run function ui:smithing/upgrade/item/bonus_status/new
    execute if data storage ui: ItemData.bonus[] run function ui:smithing/combine/item/bonus_status/_