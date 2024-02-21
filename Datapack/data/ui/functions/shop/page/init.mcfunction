#> ui:shop/page/init
# UIの初期化

team join Shop @s
data modify entity @s Items set value [{Count:1b,Slot:0b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:1b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:2b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:3b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:4b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:5b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:6b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:7b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:8b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:17b,id:"glass_bottle",tag:{CustomModelData:3009,UI:{ItemType:"Sell"},display:{Name:'{"text":"売却","color":"white","bold":true,"italic":false}'}}}]

# 商品を並べる
    execute on passengers run data modify storage ui: Products set from entity @s data.ShopData[0]
    execute if data storage ui: Products[0] run function ui:shop/page/get_entry {Num:0}
    execute if data storage ui: Products[0] run function ui:shop/page/set_entry with storage ui: Entry
    execute if data storage ui: Products[1] run function ui:shop/page/get_entry {Num:1}
    execute if data storage ui: Products[1] run function ui:shop/page/set_entry with storage ui: Entry
    execute if data storage ui: Products[2] run function ui:shop/page/get_entry {Num:2}
    execute if data storage ui: Products[2] run function ui:shop/page/set_entry with storage ui: Entry
    execute if data storage ui: Products[3] run function ui:shop/page/get_entry {Num:3}
    execute if data storage ui: Products[3] run function ui:shop/page/set_entry with storage ui: Entry
    execute if data storage ui: Products[4] run function ui:shop/page/get_entry {Num:4}
    execute if data storage ui: Products[4] run function ui:shop/page/set_entry with storage ui: Entry
    execute if data storage ui: Products[5] run function ui:shop/page/get_entry {Num:5}
    execute if data storage ui: Products[5] run function ui:shop/page/set_entry with storage ui: Entry
    data remove storage ui: Products