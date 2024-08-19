#> ui:smithing/combine/item/bonus_status/new/combine_bonus
# 合成アイテムの合成補正ステータスbonus_statusをnew_bonusに加算

# 重複していれば合わせて一つに
    $execute unless data storage ui: ItemData.new_bonus[{status:"$(status)",value:0}] run data modify storage ui: ItemData.Duplicate set value 1b

# 補正ステータスが重複していなければそのまま追加
    $execute unless data storage ui: ItemData{Duplicate:1b} run data modify storage ui: ItemData.new_bonus[{status:"$(status)"}] set from storage ui: ItemData.combine_bonus[0]

# 重複したbonusを合わせて一つに
    execute if data storage ui: ItemData{Duplicate:1b} run function ui:smithing/combine/item/bonus_status/extra/merge_new with storage ui: ItemData.combine_bonus[0]

# ItemData.combine_bonusが無くなるまで再帰
    data remove storage ui: ItemData.Duplicate
    data remove storage ui: ItemData.combine_bonus[0]
    execute unless data storage ui: ItemData.combine_bonus[] run data remove storage ui: ItemData.combine_bonus
    execute if data storage ui: ItemData.combine_bonus[] run function ui:smithing/combine/item/bonus_status/new/combine_bonus with storage ui: ItemData.combine_bonus[0]