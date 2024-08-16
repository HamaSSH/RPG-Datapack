#> ui:enchanting/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] *[custom_data~{ui:{item_type:"blank"}}]

# エンチャントアイテムデータの整形
    # エンチャント可能なアイテム(既にスロット内のものを除く)→EnchantableItems
        data modify storage ui: EnchantableItems append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{enchantable:1b}}}}]
        data remove storage ui: EnchantableItems[{Slot:10b}]
    # 素材アイテム(既にスロット内のものを除く)→EnchantMaterials
        data modify storage ui: EnchantMaterials append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}]
        data remove storage ui: EnchantMaterials[{Slot:12b}]
    # 触媒アイテム(既にスロット内のものを除く)→EnchantCatalysts
        data modify storage ui: EnchantCatalysts append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{enchant_catalyst:1b}}}}]
        data remove storage ui: EnchantCatalysts[{Slot:13b}]
    # アイテムをスロットに配置
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{enchantable:1b}}}}] run function ui:enchanting/page/set_item/enchantable {Slot:"10b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}] run function ui:enchanting/page/set_item/enchant_item {Slot:"12b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{enchant_catalyst:1b}}}}] run function ui:enchanting/page/set_item/enchant_catalyst {Slot:"13b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: EnchantableItems[] run data modify storage ui: ReturnItems set from storage ui: EnchantableItems
        execute if data storage ui: EnchantMaterials[] run data modify storage ui: ReturnItems set from storage ui: EnchantMaterials
        execute if data storage ui: EnchantCatalysts[] run data modify storage ui: ReturnItems set from storage ui: EnchantCatalysts
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{enchantable:1b}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{enchant_catalyst:1b}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 強化する
    execute unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{item_type:"enchant"}}}}] run function ui:enchanting/enchant/check

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# メニュー内容更新
    execute on vehicle run function ui:enchanting/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems
    data remove storage ui: EnchantableItems
    data remove storage ui: EnchantMaterials
    data remove storage ui: EnchantCatalysts