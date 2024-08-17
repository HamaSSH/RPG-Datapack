#> ui:cooking/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# 料理アイテムデータの整形
    # 料理可能なアイテム(既にスロット内のものを除く)→CookableItems
        data modify storage ui: CookableItems append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}]
        data remove storage ui: CookableItems[{Slot:10b}]
        data remove storage ui: CookableItems[{Slot:11b}]
        data remove storage ui: CookableItems[{Slot:12b}]
    # アイテムをスロットに配置
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}] run function ui:cooking/page/set_item {Slot:"10b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}] run function ui:cooking/page/set_item {Slot:"11b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}] run function ui:cooking/page/set_item {Slot:"12b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: CookableItems[] run data modify storage ui: ReturnItems set from storage ui: CookableItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{id:"minecraft:tropical_fish",Slot:14b}]
    data remove storage ui: ReturnItems[{id:"minecraft:tropical_fish",Slot:15b}]
    data remove storage ui: ReturnItems[{id:"minecraft:tropical_fish",Slot:16b}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 料理する
    execute unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{item_type:"cook"}}}}] run function ui:cooking/cook/check

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# メニュー内容更新
    # 初期化
        execute on vehicle run function ui:cooking/page/init
    # アイテムを配置
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{item_group_name:"料理"}},Slot:14b}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:14b}]
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{item_group_name:"料理"}},Slot:15b}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:15b}]
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{item_group_name:"料理"}},Slot:16b}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:16b}]
        execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    data remove storage ui: NewItems
    data remove storage ui: CookableItems
    data remove storage ui: Results