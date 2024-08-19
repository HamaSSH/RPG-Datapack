#> ui:smithing/combine/page/changed
# 合成UI

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] *[custom_data~{ui:{item_type:"blank"}}]

# 鍛冶アイテムデータの整形
    # 鍛冶可能なアイテム(既にスロット内のものを除く)→SmithableItems
        data modify storage ui: SmithableItems append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}]
        data remove storage ui: SmithableItems[{Slot:10b}]
    # 合成可能なアイテム(既にスロット内のものを除く)→CombineItems
        data modify storage ui: CombinableItems append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
        data remove storage ui: CombinableItems[{Slot:10b}]
        data remove storage ui: CombinableItems[{Slot:12b}]
        data remove storage ui: CombinableItems[{Slot:13b}]
        data remove storage ui: CombinableItems[{Slot:14b}]
    # アイテムをスロットに配置
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run function ui:smithing/page/set_item {Slot:"10b"}
        # 合成できるか判定(playsound用)
            tag @s add DoCombine
            execute store result score $ItemRarity Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.rarity
            execute if score $ItemRarity Temporary matches 1 unless data storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run tag @s remove DoCombine
            execute if score $ItemRarity Temporary matches 1..2 unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run tag @s remove DoCombine
            execute if score $ItemRarity Temporary matches 1..3 unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run tag @s remove DoCombine
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] if score $ItemRarity Temporary matches 2.. run function ui:smithing/combine/page/set_item {Slot:"12b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] if score $ItemRarity Temporary matches 3.. run function ui:smithing/combine/page/set_item {Slot:"13b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] if score $ItemRarity Temporary matches 4.. run function ui:smithing/combine/page/set_item {Slot:"14b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: SmithableItems[] run data modify storage ui: ReturnItems set from storage ui: SmithableItems
        execute if data storage ui: CombinableItems[] run data modify storage ui: ReturnItems set from storage ui: CombinableItems
        execute if data storage ui: ReturnItems[] run tag @s remove DoCombine
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    data modify storage ui: ReturnItems append from storage ui: Items[{Slot:10b,components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute if score $ItemRarity Temporary matches 1 run data modify storage ui: ReturnItems append from storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute if score $ItemRarity Temporary matches 1..2 run data modify storage ui: ReturnItems append from storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute if score $ItemRarity Temporary matches 1..3 run data modify storage ui: ReturnItems append from storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:9b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run function ui:smithing/combine/page/reset
    execute unless data storage ui: Items[{Slot:10b,components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run function ui:smithing/combine/page/reset
    execute unless data storage ui: Items[{Slot:11b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run function ui:smithing/combine/page/reset
    execute unless data storage ui: Items[{Slot:15b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run function ui:smithing/combine/page/reset

# 素材アイテムを合成
    execute if entity @s[tag=DoCombine] run function ui:smithing/combine/_

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# メニュー内容更新
    execute if score @s UIPage matches 0 run data remove storage ui: NewItems[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute if score @s UIPage matches 0 on vehicle run function ui:smithing/page/init
    execute if score @s UIPage matches 2 on vehicle run function ui:smithing/combine/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    tag @s remove DoCombine
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems
    data remove storage ui: CombinableItems
    scoreboard players reset $ItemRarity Temporary