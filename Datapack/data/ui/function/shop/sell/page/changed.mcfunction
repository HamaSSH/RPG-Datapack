#> ui:shop/sell/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# 売却アイテムデータの整形
    # 売却可能なアイテム(既にスロット内のものを除く)→SellItems
        data modify storage ui: SellItems append from storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
        data remove storage ui: SellItems[{Slot:9b}]
        data remove storage ui: SellItems[{Slot:10b}]
        data remove storage ui: SellItems[{Slot:11b}]
        data remove storage ui: SellItems[{Slot:12b}]
        data remove storage ui: SellItems[{Slot:13b}]
        data remove storage ui: SellItems[{Slot:14b}]
        data remove storage ui: SellItems[{Slot:15b}]
        data remove storage ui: SellItems[{Slot:16b}]
    # アイテムをスロットに配置
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"9b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"10b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"11b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"12b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"13b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"14b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"15b"}
        execute if data storage ui: Items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"16b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: SellItems[] run data modify storage ui: ReturnItems set from storage ui: SellItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:0b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:1b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:2b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:3b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:4b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:5b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:6b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:7b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:8b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set @s UIPage 0

# ページ移動の際アイテムを返却
    execute if score @s UIPage matches 0 run data modify storage ui: ReturnItems set from storage ui: Items
    execute if score @s UIPage matches 0 run data remove storage ui: NewItems[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 売却する
    execute unless data storage ui: Items[{Slot:17b,components:{"minecraft:custom_data":{ui:{item_type:"sell"}}}}] if data storage ui: NewItems[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/_

# メニュー内容更新
    execute store result storage ui: ShopPage.Page int 1 run scoreboard players get @s ShopPage
    execute if score @s UIPage matches 0 on vehicle run function ui:shop/page/init with storage ui: ShopPage
    execute if score @s UIPage matches 1 on vehicle run function ui:shop/sell/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: ShopPage
    data remove storage ui: NewItems
    data remove storage ui: SellItems