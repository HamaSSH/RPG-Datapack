#> ui:shop/buy/page/init
# UIの初期化

data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:1b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:2b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:3b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:4b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:5b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:6b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:7b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:8b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:9b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:10b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:11b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:12b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:13b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:14b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:15b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:16b,id:"glass_bottle"},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:18b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:19b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:20b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:21b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:22b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:23b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:24b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:25b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}},{Slot:26b,id:"glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"none"}},"minecraft:hide_tooltip":{}}}]

# 購入アイテムの配置
    $execute on passengers run data modify storage ui: Products set from entity @s data.shop_data[$(Page)]
    execute on passengers if score @s UIPage matches 2 run function ui:shop/page/get_entry {Num:0}
    execute on passengers if score @s UIPage matches 3 run function ui:shop/page/get_entry {Num:1}
    execute on passengers if score @s UIPage matches 4 run function ui:shop/page/get_entry {Num:2}
    execute on passengers if score @s UIPage matches 5 run function ui:shop/page/get_entry {Num:3}
    execute on passengers if score @s UIPage matches 6 run function ui:shop/page/get_entry {Num:4}
    execute on passengers if score @s UIPage matches 7 run function ui:shop/page/get_entry {Num:5}
    execute on passengers run data modify entity @s data.BuyItem.ID set from storage ui: EntryData.ID
    function ui:shop/page/set_entry with storage ui: EntryData

# アイテムが買えるかどうか判定して購入ボタンの配置
    execute store result score $Price Temporary run data get entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}].components.minecraft:custom_data.price
    execute on vehicle on attacker run scoreboard players operation $PlayerGold Temporary = @s Gold
    execute if score $Price Temporary <= $PlayerGold Temporary run item modify entity @s container.16 ui:shop/can_buy
    execute unless score $Price Temporary <= $PlayerGold Temporary run item modify entity @s container.16 ui:shop/cannot_buy

# 複数購入が可能か調べる
    execute store result score $Stack Temporary run data get entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}].components.minecraft:custom_data.max_stack_size
    execute if score $Stack Temporary matches 2.. run function ui:shop/buy/multiple/page/init

# リセット
    scoreboard players reset $Price Temporary
    scoreboard players reset $PlayerGold Temporary
    scoreboard players reset $Stack Temporary
    data remove storage ui: Products