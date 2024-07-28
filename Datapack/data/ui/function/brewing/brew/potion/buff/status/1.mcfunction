#> ui:brewing/brew/potion/buff/status/1
# 素材アイテムのバフからポーションのバフを決定

# 新しいステータスバフの代入
    $data modify storage ui: PotionData.buff[{status:"$(status)"}] set from storage ui: Ingredient.buff[0]

# 処理が終わっていないバフが無くなるまで再帰
    data remove storage ui: Ingredient.buff[0]
    execute unless data storage ui: Ingredient.buff[] run data remove storage ui: Ingredient.buff
    execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/1 with storage ui: Ingredient.buff[0]