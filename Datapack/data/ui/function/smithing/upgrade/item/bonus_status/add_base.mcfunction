#> ui:smithing/upgrade/item/bonus_status/add_base
# new_bonusにadd_baseを足し合わせる

# そのまま追加
    $data modify storage ui: ItemData.new_bonus[{status:"$(status)"}] set from storage ui: ItemData.new_base_bonus[0]

# 補正ステータスnew_base_bonusが無くなるまで再帰
    data remove storage ui: ItemData.new_base_bonus[0]
    execute unless data storage ui: ItemData.new_base_bonus[] run data remove storage ui: ItemData.new_base_bonus
    execute if data storage ui: ItemData.new_base_bonus[] run function ui:smithing/upgrade/item/bonus_status/add_base with storage ui: ItemData.new_base_bonus[0]