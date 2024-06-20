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
    execute unless data storage ui: Items[{Slot:9b,components:{"minecraft:profile":{}}}] on vehicle on vehicle on attacker run function player:status/ui
    execute unless data storage ui: Items[{Slot:11b,components:{"minecraft:custom_data":{ui:{class:"assassin"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_assassin run function player:class/assassin/join
    execute unless data storage ui: Items[{Slot:12b,components:{"minecraft:custom_data":{ui:{class:"fighter"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_fighter run function player:class/fighter/join
    execute unless data storage ui: Items[{Slot:13b,components:{"minecraft:custom_data":{ui:{class:"knight"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_knight run function player:class/knight/join
    execute unless data storage ui: Items[{Slot:14b,components:{"minecraft:custom_data":{ui:{class:"warrior"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_warrior run function player:class/warrior/join
    execute unless data storage ui: Items[{Slot:15b,components:{"minecraft:custom_data":{ui:{class:"wizard"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_wizard run function player:class/wizard/join
    execute unless data storage ui: Items[{Slot:16b,components:{"minecraft:custom_data":{ui:{class:"hunter"}}}}] on vehicle on vehicle on attacker unless predicate player:class/is_hunter run function player:class/hunter/join

# メニュー内容更新
    execute on vehicle on vehicle on attacker run loot replace block 0 0 0 container.0 loot lib:get_mcid
    data modify storage player: MCID set from block 0 0 0 Items[0].components.minecraft:profile.name
    execute on vehicle run function ui:class_change/page/init with storage player:
    data remove storage player: MCID

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    tag @s remove TickOnce
    data remove storage ui: NewItems
    data remove storage ui: SmithableItems