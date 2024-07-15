#> ui:brewing/brew/potion/buff/status/regen/_
# リジェネレーション用のデータ生成

# 整数部分
    data modify storage ui: SingleBuff.lore.int set string storage ui: SingleBuff.amplifier 0 -2
    execute if score $Amplifier Temporary matches -99..-1 run data modify storage ui: SingleBuff.lore.int set value "-0"
    execute if score $Amplifier Temporary matches 1..99 run data modify storage ui: SingleBuff.lore.int set value "0"

# 小数第1位
    data modify storage ui: SingleBuff.lore.1d set string storage ui: SingleBuff.amplifier -2 -1
    execute if score $Amplifier Temporary matches -9..9 run data modify storage ui: SingleBuff.lore.1d set value "0"

# 小数第2位
    data modify storage ui: SingleBuff.lore.2d set string storage ui: SingleBuff.amplifier -1
    execute if data storage ui: SingleBuff.lore{2d:"0"} run data modify storage ui: SingleBuff.lore.2d set value ""

# データの適用
    execute unless data storage ui: SingleBuff{amplifier:0} run function ui:brewing/brew/potion/buff/status/regen/apply with storage ui: SingleBuff.lore