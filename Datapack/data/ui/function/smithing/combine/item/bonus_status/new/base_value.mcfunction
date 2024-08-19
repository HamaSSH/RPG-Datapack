#> ui:smithing/combine/item/bonus_status/new/base_value
# 補正ステータスの基本値をまず代入

# 補正ステータスをそのまま追加
    $data modify storage ui: ItemData.new_bonus[{status:"$(status)"}] set from storage ui: ItemData.base_bonus[0]

# ItemData.base_bonusが無くなるまで再帰
    data remove storage ui: ItemData.Duplicate
    data remove storage ui: ItemData.base_bonus[0]
    execute unless data storage ui: ItemData.base_bonus[] run data remove storage ui: ItemData.base_bonus
    execute if data storage ui: ItemData.base_bonus[] run function ui:smithing/combine/item/bonus_status/new/base_value with storage ui: ItemData.base_bonus[0]