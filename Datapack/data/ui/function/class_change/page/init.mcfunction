#> ui:class_change/page/init
# UIの初期化

team join ClassChange @s
$data modify entity @s Items set value [{Slot:9b,id:"player_head",components:{"profile":{name:"$(MCID)"}}},{Slot:10b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}},{Slot:11b,id:"glass_bottle",components:{"minecraft:custom_model_data":1011,"minecraft:custom_data":{ui:{item_type:"blank",class:"assassin"}},"minecraft:item_name":"【アサシン】"}},{Slot:12b,id:"glass_bottle",components:{"minecraft:custom_model_data":1012,"minecraft:custom_data":{ui:{item_type:"blank",class:"fighter"}},"minecraft:item_name":"【ファイター】"}},{Slot:13b,id:"glass_bottle",components:{"minecraft:custom_model_data":1013,"minecraft:custom_data":{ui:{item_type:"blank",class:"knight"}},"minecraft:item_name":"【ナイト】"}},{Slot:14b,id:"glass_bottle",components:{"minecraft:custom_model_data":1014,"minecraft:custom_data":{ui:{item_type:"blank",class:"warrior"}},"minecraft:item_name":"【ウォーリア】"}},{Slot:15b,id:"glass_bottle",components:{"minecraft:custom_model_data":1015,"minecraft:custom_data":{ui:{item_type:"blank",class:"wizard"}},"minecraft:item_name":"【ウィザード】"}},{Slot:16b,id:"glass_bottle",components:{"minecraft:custom_model_data":1016,"minecraft:custom_data":{ui:{item_type:"blank",class:"hunter"}},"minecraft:item_name":"【ハンター】"}},{Slot:17b,id:"glass_bottle",components:{"minecraft:custom_model_data":3001,"minecraft:custom_data":{ui:{item_type:"blank"}},"minecraft:hide_tooltip":{}}}]

# アイコンの詳細を設定
    item modify entity @s container.9 ui:set_profile
    item modify entity @s container.11 ui:class/assassin
    item modify entity @s container.12 ui:class/fighter
    item modify entity @s container.13 ui:class/knight
    item modify entity @s container.14 ui:class/warrior
    item modify entity @s container.15 ui:class/wizard
    item modify entity @s container.16 ui:class/hunter