#> ui:enchanting/page/set_item/enchant_item
# アイテムをエンチャント素材スロットに配置する

# 既にアイテムが入っていればそのまま
$execute if data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:$(Slot)}]

# 空きがあればスロットに配置
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}] run data modify storage ui: EnchantMaterials[0].Slot set value $(Slot)
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}] run data modify storage ui: NewItems append from storage ui: EnchantMaterials[0]
$execute unless data storage ui: Items[{Slot:$(Slot),components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}] run data remove storage ui: EnchantMaterials[0]