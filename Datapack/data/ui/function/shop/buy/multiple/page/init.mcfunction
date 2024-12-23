#> ui:shop/buy/multiple/page/init
# UIの初期化

data modify entity @s Items append value {Slot:9b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:17b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:18b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:19b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:20b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:21b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:22b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:23b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:24b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}
data modify entity @s Items append value {Slot:25b,id:"glass_bottle",components:{"custom_data":{ui:{item_type:"none"}},"hide_tooltip":{}}}

# 購入アイテムの配置更新
    data modify entity @s Items[{components:{"custom_data":{ui:{item_type:"goods"}}}}].Slot set value 11b

# count変更用のメニュー
    data modify entity @s Items append value {Slot:10b,id:"white_stained_glass",count:1,components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"item_name":'{"text":"-"}'}}
    data modify entity @s Items append value {Slot:12b,id:"white_stained_glass",count:1,components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"item_name":'{"text":"+"}'}}
    data modify entity @s Items append value {Slot:13b,id:"light_gray_stained_glass",count:4,components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"item_name":'{"text":"+"}'}}
    data modify entity @s Items append value {Slot:14b,id:"gray_stained_glass",count:16,components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"item_name":'{"text":"+"}'}}
    data modify entity @s Items append value {Slot:15b,id:"black_stained_glass",count:64,components:{"item_model":"gray_stained_glass_pane","custom_data":{ui:{item_type:"blank"}},"item_name":'{"text":"+"}'}}

# 複数アイテムが買えるかどうか判定して購入ボタンの配置
    execute store result score $Price Temporary run data get entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}].components.minecraft:custom_data.price
    execute store result score $Count Temporary run data get entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}].count
    scoreboard players operation $Price Temporary *= $Count Temporary
    execute on vehicle on attacker run scoreboard players operation $PlayerGold Temporary = @s Gold
    execute if score $Price Temporary <= $PlayerGold Temporary run item modify entity @s container.16 ui:shop/can_buy
    execute unless score $Price Temporary <= $PlayerGold Temporary run item modify entity @s container.16 ui:shop/cannot_buy

# 複数購入ページに移動
    execute on passengers if score @s UIPage matches 2..7 run scoreboard players add @s UIPage 10

# リセット
    scoreboard players reset $Price Temporary
    scoreboard players reset $Count Temporary
    scoreboard players reset $PlayerGold Temporary