#> ui:brewing/page/set_item
# アイテムを醸造スロットに配置する

# 既にアイテムが入っていればそのまま
$execute if data storage ui: Items[{Slot:$(Slot),tag:{Menu:{Brewable:1b}}}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:$(Slot)}]

# 空きがあればスロットに配置
$execute unless data storage ui: Items[{Slot:$(Slot),tag:{Menu:{Brewable:1b}}}] run data modify storage ui: BrewableItems[0].Slot set value $(Slot)
$execute unless data storage ui: Items[{Slot:$(Slot),tag:{Menu:{Brewable:1b}}}] run data modify storage ui: NewItems append from storage ui: BrewableItems[0]
$execute unless data storage ui: Items[{Slot:$(Slot),tag:{Menu:{Brewable:1b}}}] run data remove storage ui: BrewableItems[0]