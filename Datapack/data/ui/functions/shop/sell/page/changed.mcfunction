#> ui:shop/sell/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{tag:{UI:{ItemType:"Blank"}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:0b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:1b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:2b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:3b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:4b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:5b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:6b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:7b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0
    execute unless data storage ui: Items[{Slot:8b,tag:{UI:{ItemType:"Blank"}}}] run scoreboard players set @s UIPage 0

# メニュー内容更新
    execute if score @s UIPage matches 0 on vehicle run function ui:shop/page/init
    execute if score @s UIPage matches 2 on vehicle run function ui:shop/sell/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems