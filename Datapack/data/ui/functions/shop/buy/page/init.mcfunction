#> ui:shop/buy/page/init
# UIの初期化

data modify entity @s Items set value [{Count:1b,Slot:0b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:1b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:2b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:3b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:4b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:5b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:6b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:7b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:8b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}}]

# 買うアイテムの表示
    $execute on passengers run data modify storage ui: Products set from entity @s data.ShopData[$(Page)]
    execute on passengers if score @s UIPage matches 2 run function ui:shop/page/get_entry {Num:0}
    execute on passengers if score @s UIPage matches 3 run function ui:shop/page/get_entry {Num:1}
    execute on passengers if score @s UIPage matches 4 run function ui:shop/page/get_entry {Num:2}
    execute on passengers if score @s UIPage matches 5 run function ui:shop/page/get_entry {Num:3}
    execute on passengers if score @s UIPage matches 6 run function ui:shop/page/get_entry {Num:4}
    execute on passengers if score @s UIPage matches 7 run function ui:shop/page/get_entry {Num:5}
    execute on passengers run data modify entity @s data.BuyItem.ID set from storage ui: Entry.ID
    function ui:shop/page/set_entry with storage ui: Entry
    data remove storage ui: Products

# 買えるかどうか判定して購入ボタンの配置
    execute store result score $Price Temporary run data get entity @s Items[{tag:{UI:{ItemType:"Goods"}}}].tag.Buy
    execute on vehicle on attacker run scoreboard players operation $PlayerGold Temporary = @s Gold
    execute if score $Price Temporary <= $PlayerGold Temporary run data modify entity @s Items append value {Count:1b,Slot:16b,id:"glass_bottle",tag:{CustomModelData:3012,UI:{ItemType:"Buy"},display:{Name:'{"text":"購入する","color":"white","bold":true,"italic":false}'}}}
    execute unless score $Price Temporary <= $PlayerGold Temporary run data modify entity @s Items append value {Count:1b,Slot:16b,id:"glass_bottle",tag:{CustomModelData:3013,UI:{ItemType:"Buy"},display:{Name:'{"text":"お金が足りない！","color":"white","bold":true,"italic":false}'}}}

# リセット
    scoreboard players reset $Price Temporary
    scoreboard players reset $PlayerGold Temporary