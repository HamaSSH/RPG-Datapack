#> ui:shop/page/init
# UIの初期化

team join Shop @s
data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:1b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:2b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:3b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:4b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:5b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:6b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:7b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:8b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_model_data":3009,"minecraft:custom_data":{ui:{item_type:"sell"}},"minecraft:item_name":'{"text":"売却メニューを開く","bold":true}'}}]

# 商品アイテムを並べる
    $execute on passengers run data modify storage ui: Products set from entity @s data.shop_data[$(Page)]
    execute if data storage ui: Products[0] run function ui:shop/page/get_entry {Num:0}
    execute if data storage ui: Products[0] run function ui:shop/page/set_entry with storage ui: EntryData
    execute if data storage ui: Products[1] run function ui:shop/page/get_entry {Num:1}
    execute if data storage ui: Products[1] run function ui:shop/page/set_entry with storage ui: EntryData
    execute if data storage ui: Products[2] run function ui:shop/page/get_entry {Num:2}
    execute if data storage ui: Products[2] run function ui:shop/page/set_entry with storage ui: EntryData
    execute if data storage ui: Products[3] run function ui:shop/page/get_entry {Num:3}
    execute if data storage ui: Products[3] run function ui:shop/page/set_entry with storage ui: EntryData
    execute if data storage ui: Products[4] run function ui:shop/page/get_entry {Num:4}
    execute if data storage ui: Products[4] run function ui:shop/page/set_entry with storage ui: EntryData
    execute if data storage ui: Products[5] run function ui:shop/page/get_entry {Num:5}
    execute if data storage ui: Products[5] run function ui:shop/page/set_entry with storage ui: EntryData
    data remove storage ui: Products

# 商品ページを移る用アイテムを配置するか判定
    execute on passengers store result score $TotalPage Temporary if data entity @s data.shop_data[]
    scoreboard players remove $TotalPage Temporary 1
    execute on passengers if score @s ShopPage matches 1.. on vehicle run data modify entity @s Items append value {Slot:9b,id:"glass_bottle",components:{"minecraft:custom_model_data":3014,"minecraft:custom_data":{ui:{item_type:"backward"}},"minecraft:item_name":'{"text":"←","bold":true}'}}
    execute on passengers if score @s ShopPage < $TotalPage Temporary on vehicle run data modify entity @s Items append value {Slot:16b,id:"glass_bottle",components:{"minecraft:custom_model_data":3015,"minecraft:custom_data":{ui:{item_type:"forward"}},"minecraft:item_name":'{"text":"→","bold":true}'}}
    scoreboard players reset $TotalPage Temporary