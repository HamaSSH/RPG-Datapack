#> ui:smithing/combine/page/set_item
# アイテムを合成スロットに配置する

# 既にアイテムが入っていればそのまま(予定)
$execute if data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] run data modify storage ui: CombineItem set from storage ui: Items[{Slot:$(Slot)}]

# 空きがあればスロットに配置(予定)
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] run data modify storage ui: CombinableItems[0].Slot set value $(Slot)
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] run data modify storage ui: CombineItem set from storage ui: CombinableItems[0]
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] run data remove storage ui: CombinableItems[0]

# 配置したいアイテムのcountが1より多いとき過剰分を返却
    execute store result storage ui: CombineItem.count byte 0.999 run data get storage ui: CombineItem.count
    execute unless data storage ui: CombineItem{count:0} run data modify storage ui: ReturnItems append from storage ui: CombineItem
    execute if data storage ui: ReturnItems[] run function ui:return_item/_
    data modify storage ui: CombineItem.count set value 1b

# count処理後のアイテムをスロットに配置
    data modify storage ui: NewItems append from storage ui: CombineItem
    data remove storage ui: CombineItem