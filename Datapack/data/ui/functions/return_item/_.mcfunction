#> ui:return_item/_
# アイテムを返却

# アイテムをひとつづつstorageに入れて返却
    data modify storage ui: GiveItem set from storage ui: ReturnItems[0]
    data remove storage ui: ReturnItems[0]
    execute on vehicle on vehicle on attacker run function ui:return_item/give with storage ui: GiveItem

# 返却するアイテムが無くなるまで続ける
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_