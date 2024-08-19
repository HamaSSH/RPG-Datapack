#> ui:smithing/combine/item/bonus_status/_
# 合成後の補正ステータス値を設定

# 補正ステータス値の取得
    data modify storage ui: SingleBonus set from storage ui: ItemData.bonus[0]
    execute store result score $StatusValue Temporary run data get storage ui: SingleBonus.value

# 補正ステータスのLoreを生成
    function ui:smithing/combine/item/bonus_status/lore/generate_line

# loreの適用
    execute if data storage ui: SingleBonus{status:"HPR"} run function ui:smithing/combine/item/bonus_status/lore/regen/_
    execute if data storage ui: SingleBonus{status:"MPR"} run function ui:smithing/combine/item/bonus_status/lore/regen/_
    execute unless data storage ui: SingleBonus{status:"HPR"} unless data storage ui: SingleBonus{status:"MPR"} run function ui:smithing/combine/item/bonus_status/lore/apply with storage ui: SingleBonus
    scoreboard players reset $StatusValue Temporary

# 補正ステータスが尽きるまで再帰
    data remove storage ui: SingleBonus
    data remove storage ui: ItemData.bonus[0]
    execute if data storage ui: ItemData.bonus[] run function ui:smithing/combine/item/bonus_status/_