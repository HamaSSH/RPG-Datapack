#> ui:shop/sell/page/init
# UIの初期化

data modify entity @s Items set value [{Slot:0b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:1b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:2b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:3b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:4b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:5b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:6b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:7b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:8b,id:"glass_bottle",components:{"minecraft:custom_model_data":3011,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_model_data":3010,"minecraft:custom_data":{ui:{item_type:"sell"}},display:{Name:'{"text":"売却を確定する","color":"#FFF6A8","bold":true,"italic":false}'}}}]

# スロット内のアイテムの売価を取得
    data modify storage ui: ItemData append from storage ui: NewItems[{tag:{CanSell:1b}}]
    execute if data storage ui: ItemData[] run function ui:shop/sell/price
    execute if score $TotalPrice Temporary matches 1.. run item modify entity @s container.17 ui:shop/sell_price

# リセット
    scoreboard players reset $TotalPrice Temporary
    scoreboard players reset $TotalCount Temporary