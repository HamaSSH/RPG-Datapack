#> ui:smithing/upgrade/item/bonus_status/regen/_
# リジェネレーション用のデータ生成

data modify storage ui: ItemData.bonus[0].int set string storage ui: ItemData.bonus[0].amplifier 0 -2
data modify storage ui: ItemData.bonus[0].dec set string storage ui: ItemData.bonus[0].amplifier -2

# データの適用
    execute unless data storage ui: Singlebonus{amplifier:0} run function ui:smithing/upgrade/item/bonus_status/regen/apply with storage ui: ItemData.bonus[0]