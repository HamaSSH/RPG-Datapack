#> ui:close_detector/add
# UI閉じ検知用のタグを頭装備に追加

item replace block 0 0 0 container.0 from entity @s armor.head
data modify block 0 0 0 Items[{Slot:0b}].components.minecraft:custom_data.ui.close_detector set value 1b
loot replace entity @s armor.head mine 0 0 0 debug_stick