#> ui:shop/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] #lib:every_item{UI:{ItemType:"Goods"}}

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{tag:{UI:{ItemType:"Blank"}}}]
    data remove storage ui: ReturnItems[{tag:{UI:{ItemType:"Goods"}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    execute unless data storage ui: Items[{Slot:17b,tag:{UI:{ItemType:"Sell"}}}] run scoreboard players set @s UIPage 2

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