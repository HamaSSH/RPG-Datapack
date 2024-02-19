#> ui:smithing/combine/item/bonus_status/extra/add
# 合成アイテムのBonusをひとつずつExBonusに追加していく

# 重複していれば合わせて一つに
    $execute if data storage ui: ItemData.ExBonus[{Status:$(Status)}] run function ui:smithing/combine/item/bonus_status/extra/merge with storage ui: ItemData.Queue[0]

# 補正ステータスが重複していなければそのまま追加
    $execute unless data storage ui: ItemData.ExBonus[{Status:$(Status)}] run data modify storage ui: ItemData.ExBonus append from storage ui: ItemData.Queue[0]

# 補正ステータスQueueが無くなるまで再帰
    data remove storage ui: ItemData.Queue[0]
    execute unless data storage ui: ItemData.Queue[] run data remove storage ui: ItemData.Queue
    execute if data storage ui: ItemData.Queue[] run function ui:smithing/combine/item/bonus_status/extra/add with storage ui: ItemData.Queue[0]