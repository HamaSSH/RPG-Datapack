#> ui:smithing/upgrade/page/changed
# 強化UI

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] #lib:every_item[minecraft:custom_data={ui:{item_type:"blank"}}]

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
    data remove storage ui: ReturnItems[{tag:{ui:{item_type:"blank"}}}]
    data remove storage ui: ReturnItems[{tag:{UI:{Smithable:1b}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 強化する
    execute unless data storage ui: Items[{Slot:15b,tag:{ui:{item_type:"Upgrade"}}}] run function ui:smithing/upgrade/check/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:9b,tag:{ui:{item_type:"blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:10b,tag:{UI:{Smithable:1b}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:11b,tag:{ui:{item_type:"blank"}}}] run scoreboard players set @s UIPage 0

# メニュー内容更新
    execute if score @s UIPage matches 0 on vehicle run function ui:smithing/page/init
    execute if score @s UIPage matches 1 on vehicle run function ui:smithing/upgrade/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems