#> ui:shop/page/init
# UIの初期化

team join Shop @s
data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:1b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:2b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:3b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:4b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:5b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:6b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:7b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:8b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"hide_tooltip":{}}},{Slot:9b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:16b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:17b,id:"glass_bottle",components:{"item_model":"bundle","custom_data":{ui:{item_type:"sell"}},"item_name":'{"text":"売却メニューを開く","bold":true}'}},{Slot:18b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:19b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:20b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:21b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:22b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:23b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:24b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:25b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}},{Slot:26b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}]

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
    execute on passengers if score @s ShopPage matches 1.. on vehicle run data modify entity @s Items append value {Slot:9b,id:"glass_bottle",components:{"item_model":"resource:others/shop_icon/left","custom_data":{ui:{item_type:"backward"}},"item_name":'{"text":"←","bold":true}'}}
    execute on passengers if score @s ShopPage < $TotalPage Temporary on vehicle run data modify entity @s Items append value {Slot:16b,id:"glass_bottle",components:{"item_model":"resource:others/shop_icon/right","custom_data":{ui:{item_type:"forward"}},"item_name":'{"text":"→","bold":true}'}}
    scoreboard players reset $TotalPage Temporary