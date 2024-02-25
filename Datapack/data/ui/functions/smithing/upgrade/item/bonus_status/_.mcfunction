#> ui:smithing/upgrade/item/bonus_status/_
# アイテムのステータスを強化 #TODO: 鍛冶のアイテム周りの操作をui:smithing/itemにまとめたい

# 補正ステータス値の取得
    execute store result score $Amplifier Temporary run data get storage ui: ItemData.BaseBonus[0].Value
    execute if score $Amplfier Temporary matches 1..3 run scoreboard players add $Amplifier Temporary 1
    execute if score $Amplfier Temporary matches -3..-1 run scoreboard players remove $Amplifier Temporary 1
    scoreboard players operation $Amplifier Temporary *= #13 Constant
    scoreboard players operation $Amplifier Temporary /= #10 Constant
    execute store result storage ui: ItemData.Bonus[0].BaseAmplifier int 1 run scoreboard players get $Amplifier Temporary
    execute if data storage ui: ItemData.ExBonus[] run function ui:smithing/upgrade/item/bonus_status/extra with storage ui: ItemData.Bonus[0]
    execute store result storage ui: ItemData.Bonus[0].Amplifier int 1 run scoreboard players get $Amplifier Temporary

# 補正ステータスのLoreを生成
    data modify storage ui: SingleBonus set from storage ui: ItemData.Bonus[0]
    execute unless data storage ui: SingleBonus{Amplifier:0} run function ui:smithing/upgrade/item/bonus_status/lore
    scoreboard players reset $Amplifier Temporary

# データの適用
    execute if data storage ui: SingleBonus{Status:"HPR"} run function ui:smithing/upgrade/item/bonus_status/regen/_
    execute if data storage ui: SingleBonus{Status:"MPR"} run function ui:smithing/upgrade/item/bonus_status/regen/_
    execute unless data storage ui: SingleBonus{Status:"HPR"} unless data storage ui: SingleBonus{Status:"MPR"} unless data storage ui: SingleBonus{Amplifier:0} run function ui:smithing/upgrade/item/bonus_status/apply with storage ui: ItemData.Bonus[0]

# 補正ステータスが尽きるまで再帰
    data remove storage ui: SingleBonus
    data remove storage ui: ItemData.BaseBonus[0]
    data remove storage ui: ItemData.Bonus[0]
    execute unless data storage ui: ItemData.Bonus[] run function ui:smithing/upgrade/item/bonus_status/new
    execute if data storage ui: ItemData.Bonus[] run function ui:smithing/upgrade/item/bonus_status/_