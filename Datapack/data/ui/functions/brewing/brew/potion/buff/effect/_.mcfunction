#> ui:brewing/brew/potion/buff/effect/_
# 素材アイテムのエフェクトからポーションのエフェクトを決定

# エフェクトがダブっているか/最大値を超えているか検知
    execute store result score $EffectCount Temporary if data storage ui: PotionData.Buff[].Effect
    $execute if data storage ui: PotionData.Buff[{Effect:"$(Effect)"}] run data modify storage ui: PotionData.Duplicate set value 1b

# 新しいエフェクトはそのままエフェクトを付与
    execute unless data storage ui: PotionData{Duplicate:1b} if score $EffectCount Temporary matches ..1 run data modify storage ui: PotionData.Buff append from storage ui: Ingredient.Buff[0]

# エフェクトがダブってたら既存エフェクトを強化
    execute if data storage ui: PotionData{Duplicate:1b} run function ui:brewing/brew/potion/buff/effect/duplicate with storage ui: Ingredient.Buff[0]

# 処理が終わっていないバフが無くなるまで再帰
    scoreboard players reset $EffectCount Temporary
    data remove storage ui: PotionData.Duplicate
    data remove storage ui: Ingredient.Buff[0]
    execute unless data storage ui: Ingredient.Buff[] run data remove storage ui: Ingredient.Buff
    execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.Buff[0]