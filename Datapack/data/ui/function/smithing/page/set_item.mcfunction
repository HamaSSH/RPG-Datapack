#> ui:smithing/page/set_item
# アイテムを鍛冶スロットに配置する

# 既にアイテムが入っていればそのまま
$execute if data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:$(Slot)}]

# 空きがあればスロットに配置
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run data modify storage ui: SmithableItems[0].Slot set value $(Slot)
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run data modify storage ui: NewItems append from storage ui: SmithableItems[0]
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run data remove storage ui: SmithableItems[0]