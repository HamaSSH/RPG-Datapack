#> ui:brewing/brew/potion/buff/effect/1
# 素材アイテムのエフェクトからポーションのエフェクトを決定

# エフェクトが最大値を超えているか検知
    execute store result score $EffectCount Temporary if data storage ui: PotionData.buff[].effect
    execute store result score $RemoveEffectCount Temporary if data storage ui: PotionData.buff[{duration:0}].effect
    scoreboard players operation $EffectCount Temporary -= $RemoveEffectCount Temporary

# 新しいステータスバフの代入
    $execute if score $EffectCount Temporary matches ..1 run data modify storage ui: PotionData.buff[{effect:"$(effect)"}] set from storage ui: Ingredient.buff[0]

# 処理が終わっていないバフが無くなるまで再帰
    scoreboard players reset $EffectCount Temporary
    scoreboard players reset $RemoveEffectCount Temporary
    data remove storage ui: Ingredient.buff[0]
    execute unless data storage ui: Ingredient.buff[] run data remove storage ui: Ingredient.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/1 with storage ui: Ingredient.buff[0]