#> ui:smithing/upgrade/item/bonus_status/add_combine
# new_bonusにcombine_bonusを足し合わせる

# 重複していれば合わせて一つに
    $execute unless data storage ui: ItemData.new_bonus[{status:"$(status)",value:0}] run data modify storage ui: ItemData.Duplicate set value 1b

# 補正ステータスが重複していなければそのまま追加
    $execute unless data storage ui: ItemData{Duplicate:1b} run data modify storage ui: ItemData.new_bonus[{status:"$(status)"}] set from storage ui: ItemData.combine_bonus[0]

# 重複したbonusを合わせて一つに
    execute if data storage ui: ItemData{Duplicate:1b} run function ui:smithing/upgrade/item/bonus_status/merge with storage ui: ItemData.combine_bonus[0]

# 補正ステータスcombine_bonusが無くなるまで再帰
    data remove storage ui: ItemData.Duplicate
    data remove storage ui: ItemData.combine_bonus[0]
    execute unless data storage ui: ItemData.combine_bonus[] run data remove storage ui: ItemData.combine_bonus
    execute if data storage ui: ItemData.combine_bonus[] run function ui:smithing/upgrade/item/bonus_status/add_combine with storage ui: ItemData.combine_bonus[0]