#> ui:cooking/cook/set_result/new_slot
# スロットへの完成品配置

$data modify storage ui: NewItems[{Slot:0b}].Slot set value $(Slot)
$execute store result storage ui: NewItems[{Slot:$(Slot)}].count int 1 run scoreboard players get $CookCount Temporary
tag @s remove SetResult