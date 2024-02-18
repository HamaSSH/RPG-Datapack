#> ui:smithing/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# 鍛冶アイテムデータの整形
    # 鍛冶可能なアイテム(既にスロット内のものを除く)→SmithableItems
        data modify storage ui: SmithableItems append from storage ui: Items[{tag:{UI:{Smithable:1b}}}]
        data remove storage ui: SmithableItems[{Slot:10b}]

    # アイテムをスロットに配置
        execute if data storage ui: Items[{tag:{UI:{Smithable:1b}}}] run function ui:smithing/page/set_item {Slot:"10b"}

    # スロットに空きが無ければ返却
        execute if data storage ui: SmithableItems[] run data modify storage ui: ReturnItems set from storage ui: SmithableItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{tag:{UI:{Smithable:1b}}}]
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    # execute unless data storage ui: Items[{Slot:12b,tag:{UI:{ItemType:"Upgrade"}}}] run
    # execute unless data storage ui: Items[{Slot:13b,tag:{UI:{ItemType:"Combine"}}}] run
    # execute unless data storage ui: Items[{Slot:14b,tag:{UI:{ItemType:"Repair"}}}] run

# メニュー内容更新
    execute on vehicle run function ui:smithing/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems
    data remove storage ui: Results