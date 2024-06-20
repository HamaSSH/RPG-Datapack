#> ui:shop/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] *[custom_data~{ui:{item_type:"goods"}}]

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ページを移動する
    # 商品ページ移動
        execute store result score $TotalPage Temporary if data entity @s data.shop_data[]
        scoreboard players remove $TotalPage Temporary 1
        execute if score @s ShopPage < $TotalPage Temporary unless data storage ui: Items[{Slot:16b,components:{"minecraft:custom_data":{ui:{item_type:"forward"}}}}] run tag @s add Forward
        execute if score @s ShopPage matches 1.. unless data storage ui: Items[{Slot:9b,components:{"minecraft:custom_data":{ui:{item_type:"backward"}}}}] run tag @s add Backward
        execute if entity @s[tag=Backward] run scoreboard players remove @s ShopPage 1
        execute if entity @s[tag=Forward] run scoreboard players add @s ShopPage 1
    execute unless data storage ui: Items[{Slot:10b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players set @s UIPage 2
    execute unless data storage ui: Items[{Slot:11b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players set @s UIPage 3
    execute unless data storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players set @s UIPage 4
    execute unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players set @s UIPage 5
    execute unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players set @s UIPage 6
    execute unless data storage ui: Items[{Slot:15b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players set @s UIPage 7
    execute unless data storage ui: Items[{Slot:17b,components:{"minecraft:custom_data":{ui:{item_type:"sell"}}}}] run scoreboard players set @s UIPage 1

# メニュー内容更新
    execute store result storage ui: ShopPage.Page int 1 run scoreboard players get @s ShopPage
    execute if score @s UIPage matches 0 on vehicle run function ui:shop/page/init with storage ui: ShopPage
    execute if score @s UIPage matches 1 on vehicle run function ui:shop/sell/page/init
    execute if score @s UIPage matches 2..7 on vehicle run function ui:shop/buy/page/init with storage ui: ShopPage

# 効果音
    execute if entity @s[tag=Backward,tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound resource:item.book.open_flip2 master @s ~ ~ ~ 1 1.2
    execute if entity @s[tag=Backward,tag=PlaysoundOnce] run tag @s remove PlaysoundOnce
    execute if entity @s[tag=Forward,tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound resource:item.book.open_flip2 master @s ~ ~ ~ 1 1.2
    execute if entity @s[tag=Forward,tag=PlaysoundOnce] run tag @s remove PlaysoundOnce
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: ShopPage
    scoreboard players reset $TotalPage Temporary
    tag @s remove Backward
    tag @s remove Forward