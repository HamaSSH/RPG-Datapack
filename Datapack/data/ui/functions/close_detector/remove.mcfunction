#> ui:close_detector/remove
# UI閉じ検知用のタグを頭装備から削除

item replace block 0 0 0 container.0 from entity @s armor.head
data remove block 0 0 0 Items[{Slot:0b}].tag.UI.CloseDetector
loot replace entity @s armor.head mine 0 0 0 debug_stick