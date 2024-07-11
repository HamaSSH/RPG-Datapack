#> ui:class_change/page/init
# UIの初期化

team join ClassChange @s
data modify entity @s Items set value [{Slot:9b,id:"player_head"},{Slot:10b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:11b,id:"glass_bottle",components:{"minecraft:custom_model_data":1011,"minecraft:custom_data":{ui:{item_type:"blank",class:"rogue"}},"minecraft:item_name":"【ローグ】"}},{Slot:12b,id:"glass_bottle",components:{"minecraft:custom_model_data":1012,"minecraft:custom_data":{ui:{item_type:"blank",class:"fighter"}},"minecraft:item_name":"【ファイター】"}},{Slot:13b,id:"glass_bottle",components:{"minecraft:custom_model_data":1013,"minecraft:custom_data":{ui:{item_type:"blank",class:"paladin"}},"minecraft:item_name":"【パラディン】"}},{Slot:14b,id:"glass_bottle",components:{"minecraft:custom_model_data":1015,"minecraft:custom_data":{ui:{item_type:"blank",class:"wizard"}},"minecraft:item_name":"【ウィザード】"}},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}}]

# アイコンの詳細を設定
    item modify entity @s container.9 ui:set_profile
    item modify entity @s container.11 ui:class/rogue
    item modify entity @s container.12 ui:class/fighter
    item modify entity @s container.13 ui:class/paladin
    item modify entity @s container.14 ui:class/wizard