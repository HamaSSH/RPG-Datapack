#> ui:class_change/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle
    clear @a[tag=UsingUI] player_head

# 関係ないアイテムを返却
    data modify storage ui: ReturnItems set from storage ui: Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{id:"minecraft:player_head"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] run function ui:return_item/_

# ボタン選択
    execute unless data storage ui: Items[{Slot:9b,id:"minecraft:player_head"}] run data modify storage ui: Class.path set value "status/ui"
    execute unless data storage ui: Items[{Slot:11b,components:{"minecraft:custom_data":{ui:{class:"rogue"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_rogue run data modify storage ui: Class.path set value "class/rogue/join"
    execute unless data storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{class:"fighter"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_fighter run data modify storage ui: Class.path set value "class/fighter/join"
    execute unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{class:"paladin"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_paladin run data modify storage ui: Class.path set value "class/paladin/join"
    execute unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{class:"wizard"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_wizard run data modify storage ui: Class.path set value "class/wizard/join"
    execute if data storage ui: Class.path run function ui:class_change/page/_ with storage ui: Class

# メニュー内容更新
    execute on vehicle run function ui:class_change/page/init

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems
    data remove storage ui: Class