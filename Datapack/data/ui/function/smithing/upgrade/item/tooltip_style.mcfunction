#> ui:smithing/upgrade/item/tooltip_style
# レアリティごとのtooltip_styleを設定

$data modify storage ui: NewItems[{Slot:10b}].components.minecraft:tooltip_style set value "resource:rarity_$(rarity)"