#> ui:shop/buy/multiple/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] *[custom_data~{ui:{item_type:"blank"}}]
    clear @a[tag=UsingUI] *[custom_data~{ui:{item_type:"goods"}}]

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# countを変更する
    execute store result score $Count Temporary run data get storage ui: Items[{Slot:11b}].count
    execute store result score $MaxCount Temporary run data get storage ui: Items[{Slot:11b}].components.minecraft:custom_data.max_stack_size
    execute unless data storage ui: Items[{Slot:10b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set $AddCount Temporary -1
    execute unless data storage ui: Items[{Slot:11b,components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}] run scoreboard players remove @s UIPage 10
    execute unless data storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] run scoreboard players set $AddCount Temporary 1
    execute unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}},count:4}] run scoreboard players set $AddCount Temporary 4
    execute unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}},count:16}] run scoreboard players set $AddCount Temporary 16
    execute unless data storage ui: Items[{Slot:15b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}},count:64}] run scoreboard players set $AddCount Temporary 64
    execute unless score $Count Temporary matches 1 run scoreboard players operation $Count Temporary += $AddCount Temporary
    execute if score $Count Temporary matches 1 run scoreboard players operation $Count Temporary = $AddCount Temporary
    execute if score $Count Temporary matches 1 run scoreboard players set $Count Temporary 2
    execute if score $Count Temporary matches ..0 run scoreboard players set $Count Temporary 1
    execute if score $Count Temporary > $MaxCount Temporary run scoreboard players operation $Count Temporary = $MaxCount Temporary
    execute on vehicle store result entity @s Items[{Slot:11b}].count byte 1 run scoreboard players get $Count Temporary

# 購入する
    data modify storage ui: BuyItem set from entity @s data.BuyItem
    execute unless data storage ui: Items[{Slot:16b,components:{"minecraft:custom_data":{ui:{item_type:"buy"}}}}] run function ui:shop/buy/check with storage ui: BuyItem

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

# メニュー内容更新
    execute store result storage ui: ShopPage.Page int 1 run scoreboard players get @s ShopPage
    execute if score @s UIPage matches 0 on vehicle run function ui:shop/page/init with storage ui: ShopPage
    execute if score @s UIPage matches 2..7 on vehicle run function ui:shop/buy/page/init with storage ui: ShopPage
    execute if score @s UIPage matches 12..17 on vehicle run function ui:shop/buy/multiple/page/init

# 効果音
    execute unless data storage ui: Items[{Slot:10b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.7
    execute unless data storage ui: Items[{Slot:10b,components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}] if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.9
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    scoreboard players reset $Count Temporary
    scoreboard players reset $MaxCount Temporary
    scoreboard players reset $AddCount Temporary
    data remove storage ui: BuyItem
    data remove storage ui: ShopPage