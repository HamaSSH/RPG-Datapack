#> ui:brewing/brew/potion/buff/effect/shaping
# エフェクトをもとにデータを整形

# テキスト
    execute if data storage ui: Ingredient.SingleBuff{Effect:"poison"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "毒"
    execute if data storage ui: Ingredient.SingleBuff{Effect:"haste"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "採掘速度上昇"
    execute if data storage ui: Ingredient.SingleBuff{Effect:"hunger"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "空腹"
    execute if data storage ui: Ingredient.SingleBuff{Effect:"jump_boost"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "跳躍力上昇"
    execute if data storage ui: Ingredient.SingleBuff{Effect:"blindness"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "盲目"
    execute if data storage ui: Ingredient.SingleBuff{Effect:"water_breathing"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "水中呼吸"
    execute if data storage ui: Ingredient.SingleBuff{Effect:"regeneration"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "再生能力"

# エフェクトレベル
    execute if data storage ui: Ingredient.SingleBuff{Amplifier:0} run data modify storage ui: Ingredient.Buff[0].Lore.Level set value "0"
    execute if data storage ui: Ingredient.SingleBuff{Amplifier:1} run data modify storage ui: Ingredient.Buff[0].Lore.Level set value "2II"
    execute if data storage ui: Ingredient.SingleBuff{Amplifier:2} run data modify storage ui: Ingredient.Buff[0].Lore.Level set value "2III"
    execute if data storage ui: Ingredient.SingleBuff{Amplifier:3} run data modify storage ui: Ingredient.Buff[0].Lore.Level set value "2IV"
    execute if data storage ui: Ingredient.SingleBuff{Amplifier:4} run data modify storage ui: Ingredient.Buff[0].Lore.Level set value "2V"

# 素材アイテムからLoreを流用
    $data modify storage ui: Ingredient.Buff[0].Lore.L set string storage ui: Ingredient.display.Lore[$(Citation)] 0 32
    $data modify storage ui: Ingredient.Buff[0].Lore.R set string storage ui: Ingredient.display.Lore[$(Citation)] -54
    # $data remove storage ui: Ingredient.display.Lore[$(Citation)]

# エフェクトの持続時間
    data modify storage ui: Ingredient.Buff[0].Lore.10Sec set value ""
    execute if score $DurationSec Temporary matches ..9 run data modify storage ui: Ingredient.Buff[0].Lore.10Sec set value 0
    execute store result storage ui: Ingredient.Buff[0].Lore.Sec int 1 run scoreboard players get $DurationSec Temporary
    execute store result storage ui: Ingredient.Buff[0].Lore.Min int 1 run scoreboard players get $DurationMin Temporary