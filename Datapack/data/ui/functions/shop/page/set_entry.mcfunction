#> ui:shop/page/set_entry
# 商品単体を棚に並べる

$loot replace entity @s container.$(Slot) loot asset:item/$(ID)
$data modify entity @s Items[{Slot:$(Slot)b}].tag.UI.ItemType set value "Goods"
data remove storage ui: Entry