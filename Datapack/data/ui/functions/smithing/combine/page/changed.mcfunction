#> ui:smithing/combine/page/changed
# 合成UI

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] #lib:every_item{UI:{ItemType:"Blank"}}

# 鍛冶アイテムデータの整形
    # 鍛冶可能なアイテム(既にスロット内のものを除く)→SmithableItems
        data modify storage ui: SmithableItems append from storage ui: Items[{tag:{UI:{Smithable:1b}}}]
        data remove storage ui: SmithableItems[{Slot:10b}]
    # 合成可能なアイテム(既にスロット内のものを除く)→CombineItems
        data modify storage ui: CombinableItems append from storage ui: Items[{tag:{UI:{Combinable:1b}}}]
        data remove storage ui: CombinableItems[{Slot:12b}]
        data remove storage ui: CombinableItems[{Slot:13b}]
        data remove storage ui: CombinableItems[{Slot:14b}]
    # アイテムをスロットに配置
        execute if data storage ui: Items[{tag:{UI:{Smithable:1b}}}] run function ui:smithing/page/set_item {Slot:"10b"}
        execute if data storage ui: Items[{tag:{UI:{Combinable:1b}}}] unless data storage ui: Items[{Slot:12b,tag:{UI:{ItemType:"Blank"}}}] run function ui:smithing/combine/page/set_item {Slot:"12b"}
        execute if data storage ui: Items[{tag:{UI:{Combinable:1b}}}] unless data storage ui: Items[{Slot:13b,tag:{UI:{ItemType:"Blank"}}}] run function ui:smithing/combine/page/set_item {Slot:"13b"}
        execute if data storage ui: Items[{tag:{UI:{Combinable:1b}}}] unless data storage ui: Items[{Slot:14b,tag:{UI:{ItemType:"Blank"}}}] run function ui:smithing/combine/page/set_item {Slot:"14b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: SmithableItems[] run data modify storage ui: ReturnItems set from storage ui: SmithableItems
        execute if data storage ui: CombinableItems[] run data modify storage ui: ReturnItems set from storage ui: CombinableItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{tag:{UI:{ItemType:"Blank"}}}]
    data remove storage ui: ReturnItems[{tag:{UI:{Smithable:1b}}}]
    data remove storage ui: ReturnItems[{tag:{UI:{Combinable:1b}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 素材アイテムを合成
    function ui:smithing/combine/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:9b,tag:{UI:{ItemType:"Blank"}}}] run function ui:smithing/combine/page/reset
    execute unless data storage ui: Items[{Slot:10b,tag:{UI:{Smithable:1b}}}] run function ui:smithing/combine/page/reset
    execute unless data storage ui: Items[{Slot:11b,tag:{UI:{ItemType:"Blank"}}}] run function ui:smithing/combine/page/reset
    execute unless data storage ui: Items[{Slot:15b,tag:{UI:{ItemType:"Blank"}}}] run function ui:smithing/combine/page/reset

# メニュー内容更新
    execute if score @s UIPage matches 0 on vehicle run function ui:smithing/page/init
    execute if score @s UIPage matches 2 on vehicle run function ui:smithing/combine/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems
    data remove storage ui: CombinableItems