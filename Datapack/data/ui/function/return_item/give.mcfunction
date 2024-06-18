#> ui:return_item/give
# アイテムの返還

# アイテムの召喚
    data remove storage ui: GiveItem.Slot
    data modify block 0 0 0 Items[0] set from storage ui: GiveItem
    loot spawn ~ ~ ~ mine 0 0 0 debug_stick

# 瞬時にアイテムの主が拾う
    data modify entity @n[type=item,distance=..0] Owner set from entity @p UUID
    data modify entity @n[type=item,distance=..0] PickupDelay set value 0

# リセット
    data remove storage ui: GiveItem