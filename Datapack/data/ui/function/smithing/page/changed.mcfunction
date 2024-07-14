#> ui:smithing/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# 鍛冶アイテムデータの整形
    # 鍛冶可能なアイテム(既にスロット内のものを除く)→SmithableItems
        data modify storage ui: SmithableItems append from storage ui: Items[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}]
        data remove storage ui: SmithableItems[{Slot:10b}]
    # アイテムをスロットに配置
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}] run function ui:smithing/page/set_item {Slot:"10b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: SmithableItems[] run data modify storage ui: ReturnItems set from storage ui: SmithableItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{item_type:"upgrade"}}}}] run scoreboard players set @s UIPage 1
    execute unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{item_type:"combine"}}}}] run scoreboard players set @s UIPage 2
    # もし鍛冶可能アイテムが配置されていなければ移動しない
        execute unless data storage ui: Items[{Slot:10b}] unless data storage ui: NewItems[{Slot:10b}] run scoreboard players set @s UIPage 0
    # もしツール系アイテムであれば移動しない
        execute if data storage ui: Items[{Slot:10b}].components.minecraft:custom_data.tool run scoreboard players set @s UIPage 0
        execute if data storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool run scoreboard players set @s UIPage 0

# ツールの修理
    execute unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{item_type:"repair"}}}}] if data storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool run function ui:smithing/repair/_

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# メニュー内容更新
    execute if score @s UIPage matches 0 on vehicle run function ui:smithing/page/init
    execute if score @s UIPage matches 1 on vehicle run function ui:smithing/upgrade/page/init
    execute if score @s UIPage matches 2 on vehicle run function ui:smithing/combine/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems