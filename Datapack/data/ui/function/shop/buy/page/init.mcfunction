#> ui:shop/buy/page/init
# UIの初期化

data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:1b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:2b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:3b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:4b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:5b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:6b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:7b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:8b,id:"glass_bottle",components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:9b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:16b,id:"glass_bottle"},{Slot:17b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:18b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:19b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:20b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:21b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:22b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:23b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:24b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:25b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}},{Slot:26b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"tooltip_display":{"hide_tooltip":true}}}]

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