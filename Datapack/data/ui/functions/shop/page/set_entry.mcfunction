#> ui:shop/page/set_entry
# 商品単体を棚に並べる

$loot replace entity @s container.$(Slot) loot asset:item/$(ID)
$data modify storage ui: EntryData.tag set from entity @s Items[{Slot:$(Slot)b}].tag
$item modify entity @s container.$(Slot) ui:shop/item_init
data remove storage ui: EntryData