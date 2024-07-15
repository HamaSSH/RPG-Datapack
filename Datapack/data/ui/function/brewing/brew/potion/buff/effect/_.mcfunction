#> ui:brewing/brew/potion/buff/effect/_
# 素材アイテムのエフェクトからポーションのエフェクトを決定

# エフェクトがダブっているか/最大値を超えているか検知
    execute store result score $EffectCount Temporary if data storage ui: PotionData.buff[].effect
    execute store result score $RemoveEffectCount Temporary if data storage ui: PotionData.buff[{duration:0}].effect
    scoreboard players operation $EffectCount Temporary -= $RemoveEffectCount Temporary
    tellraw @a {"score":{"objective": "Temporary","name": "$EffectCount"}}
    tellraw @a {"score":{"objective": "Temporary","name": "$RemoveEffectCount"}}
    $execute unless data storage ui: PotionData.buff[{effect:"$(effect)",duration:0}] run data modify storage ui: PotionData.Duplicate set value 1b

# 新しいエフェクトはそのままエフェクトを付与
    $execute unless data storage ui: PotionData{Duplicate:1b} if score $EffectCount Temporary matches ..1 run data modify storage ui: PotionData.buff[{effect:"$(effect)"}] set from storage ui: Ingredient.buff[0]

# エフェクトがダブってたら既存エフェクトを強化
    execute if data storage ui: PotionData{Duplicate:1b} run function ui:brewing/brew/potion/buff/effect/duplicate with storage ui: Ingredient.buff[0]

# 処理が終わっていないバフが無くなるまで再帰
    scoreboard players reset $EffectCount Temporary
    scoreboard players reset $RemoveEffectCount Temporary
    data remove storage ui: PotionData.Duplicate
    data remove storage ui: Ingredient.buff[0]
    execute unless data storage ui: Ingredient.buff[] run data remove storage ui: Ingredient.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.buff[0]