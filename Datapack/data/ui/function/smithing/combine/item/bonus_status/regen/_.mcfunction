#> ui:smithing/combine/item/bonus_status/regen/_
# リジェネレーション用のデータ生成

# 整数部分
    data modify storage ui: SingleBonus.int set string storage ui: SingleBonus.amplifier 0 -2
    execute if score $Amplifier Temporary matches -99..-1 run data modify storage ui: SingleBonus.int set value "-0"
    execute if score $Amplifier Temporary matches 1..99 run data modify storage ui: SingleBonus.int set value "0"

# 小数第1位
    data modify storage ui: SingleBonus.1d set string storage ui: SingleBonus.amplifier -2 -1
    execute if score $Amplifier Temporary matches -9..9 run data modify storage ui: SingleBonus.1d set value "0"

# 小数第2位
    data modify storage ui: SingleBonus.2d set string storage ui: SingleBonus.amplifier -1
    execute if data storage ui: SingleBonus{2d:"0"} run data modify storage ui: SingleBonus.2d set value ""

# データの適用
    execute unless data storage ui: SingleBonus{amplifier:0} run function ui:smithing/combine/item/bonus_status/regen/apply with storage ui: SingleBonus