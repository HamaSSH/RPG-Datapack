#> ui:smithing/combine/item/bonus_status/regen/_
# リジェネレーション用のデータ生成

data modify storage ui: ItemData.bonus[0].AmplifierInt set string storage ui: ItemData.bonus[0].amplifier 0 -2
data modify storage ui: ItemData.bonus[0].AmplifierDec set string storage ui: ItemData.bonus[0].amplifier -2

# データの適用
    execute unless data storage ui: SingleBonus{amplifier:0} run function ui:smithing/combine/item/bonus_status/regen/apply with storage ui: ItemData.bonus[0]