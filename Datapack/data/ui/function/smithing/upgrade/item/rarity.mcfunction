#> ui:smithing/upgrade/item/rarity
# レアリティのLoreを設定

$data modify storage ui: Result.display.Lore append value '{"text": "▸ $(item_group_name)【\\uE15$(rarity)】","color": "white","italic": false}'