#> ui:shop/buy/page/changed
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

# 購入する
    data modify storage ui: BuyItem set from entity @s data.BuyItem
    execute unless data storage ui: Items[{Slot:16b,tag:{UI:{ItemType:"Buy"}}}] run function ui:shop/buy/check with storage ui: BuyItem

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
    execute store result storage ui: ShopPage.Page int 1 run scoreboard players get @s ShopPage
    execute if score @s UIPage matches 0 on vehicle run function ui:shop/page/init with storage ui: ShopPage
    execute if score @s UIPage matches 1 on vehicle run function ui:shop/sell/page/init
    execute if score @s UIPage matches 2..7 on vehicle run function ui:shop/buy/page/init with storage ui: ShopPage

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    scoreboard players reset $ProductNum Temporary
    data remove storage ui: BuyItem
    data remove storage ui: ShopPage