#> ui:smithing/combine/item/bonus_status/regen/_
# リジェネレーション用のデータ生成

execute store result storage ui: ItemData.Bonus[0].AmplifierInt int 0.01 run data get storage ui: ItemData.Bonus[0].Amplifier
execute store result score $AmplifierDec Temporary run data get storage ui: ItemData.Bonus[0].Amplifier
scoreboard players operation $AmplifierDec Temporary %= #100 Constant
execute store result storage ui: ItemData.Bonus[0].AmplifierDec int 1 run scoreboard players get $AmplifierDec Temporary

# データの適用
    execute unless data storage ui: SingleBonus{Amplifier:0} run function ui:smithing/combine/item/bonus_status/regen/apply with storage ui: ItemData.Bonus[0]

# リセット
    scoreboard players reset $AmplifierDec Temporary