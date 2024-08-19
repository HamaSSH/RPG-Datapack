#> ui:smithing/combine/item/bonus_status/extra/add
# 合成アイテムのBonusをひとつずつcombine_bonusに追加していく

# 重複していれば合わせて一つに
    $execute unless data storage ui: ItemData.combine_bonus[{status:"$(status)",value:0}] run data modify storage ui: ItemData.Duplicate set value 1b

# 補正ステータスが重複していなければそのまま追加
    $execute unless data storage ui: ItemData{Duplicate:1b} run data modify storage ui: ItemData.combine_bonus[{status:"$(status)"}] set from storage ui: ItemData.Queue[0]

# 重複したbonusを合わせて一つに
    execute if data storage ui: ItemData{Duplicate:1b} run function ui:smithing/combine/item/bonus_status/extra/merge_combine with storage ui: ItemData.Queue[0]

# 補正ステータスQueueが無くなるまで再帰
    data remove storage ui: ItemData.Duplicate
    data remove storage ui: ItemData.Queue[0]
    execute unless data storage ui: ItemData.Queue[] run data remove storage ui: ItemData.Queue
    execute if data storage ui: ItemData.Queue[] run function ui:smithing/combine/item/bonus_status/extra/add with storage ui: ItemData.Queue[0]