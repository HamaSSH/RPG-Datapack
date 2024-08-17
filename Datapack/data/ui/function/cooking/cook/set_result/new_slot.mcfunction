#> ui:cooking/cook/set_result/new_slot
# スロットへの完成品配置

$data modify storage ui: NewItems[{Slot:0b}].Slot set value $(Slot)
tag @s remove SetResult