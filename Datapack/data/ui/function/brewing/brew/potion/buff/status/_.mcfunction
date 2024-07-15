#> ui:brewing/brew/potion/buff/status/_
# 素材アイテムのバフからポーションのバフを決定

# エフェクトがダブっているか検知
    $execute unless data storage ui: PotionData.buff[{status:"$(status)",duration:0}] run data modify storage ui: PotionData.Duplicate set value 1b

# 新しいステータスバフはそのままステータスバフを付与
    $execute unless data storage ui: PotionData{Duplicate:1b} run data modify storage ui: PotionData.buff[{status:"$(status)"}] set from storage ui: Ingredient.buff[0]

# ステータスバフがダブってたら既存ステータスバフを強化
    execute if data storage ui: PotionData{Duplicate:1b} run function ui:brewing/brew/potion/buff/status/duplicate with storage ui: Ingredient.buff[0]

# 処理が終わっていないバフが無くなるまで再帰
    data remove storage ui: PotionData.Duplicate
    data remove storage ui: Ingredient.buff[0]
    execute unless data storage ui: Ingredient.buff[] run data remove storage ui: Ingredient.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.buff[0]