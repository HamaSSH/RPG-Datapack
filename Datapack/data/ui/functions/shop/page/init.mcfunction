#> ui:shop/page/init
# UIの初期化

team join Shop @s
data modify entity @s Items set value [{Count:1b,Slot:0b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:1b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:2b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:3b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:4b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:5b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:6b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:7b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:8b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:17b,id:"glass_bottle",tag:{CustomModelData:3009,UI:{ItemType:"Sell"},display:{Name:'{"text":"売却","color":"white","bold":true,"italic":false}'}}}]

# 商品アイテムを並べる
    $execute on passengers run data modify storage ui: Products set from entity @s data.ShopData[$(Page)]
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
    execute on passengers store result score $TotalPage Temporary if data entity @s data.ShopData[]
    scoreboard players remove $TotalPage Temporary 1
    execute on passengers if score @s ShopPage matches 1.. on vehicle run data modify entity @s Items append value {Count:1b,Slot:9b,id:"glass_bottle",tag:{CustomModelData:3014,UI:{ItemType:"Backward"},display:{Name:'{"text":"← 前へ","color":"white","bold":true,"italic":false}'}}}
    execute on passengers if score @s ShopPage < $TotalPage Temporary on vehicle run data modify entity @s Items append value {Count:1b,Slot:16b,id:"glass_bottle",tag:{CustomModelData:3015,UI:{ItemType:"Forward"},display:{Name:'{"text":"次へ →","color":"white","bold":true,"italic":false}'}}}
    scoreboard players reset $TotalPage Temporary