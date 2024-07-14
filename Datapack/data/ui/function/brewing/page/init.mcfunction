#> ui:brewing/page/init
# uiの初期化

team join Brewing @s
data modify entity @s Items set value [{Slot:9b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:13b,id:"glass_bottle",components:{"minecraft:custom_model_data":3003,"minecraft:custom_data":{ui:{item_type:"brew"}},"minecraft:item_name":'{"text":"醸造する","bold":true}',"minecraft:lore":['{"text":"左スロットの３つのアイテムから","color":"gray","italic":false}','[{"text":"","color":"gray","italic":false},{"text":"カスタムポーション","color":"white","bold":true},{"text":"を生成する。"}]']}},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}}]