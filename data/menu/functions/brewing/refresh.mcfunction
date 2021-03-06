# 醸造メニューの初期化
    data modify entity @s Items set value [{Count:1b,Slot:9b,id:"minecraft:gray_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"text":""}'}}},{Count:1b,Slot:13b,id:"minecraft:brewing_stand",tag:{menu:{blank:1b,button:"brew"},display:{Name:'{"text":"醸造する","bold":true,"italic":false}'}}},{Count:1b,Slot:17b,id:"minecraft:gold_block",tag:{menu:{blank:1b}}}]
    item modify entity @s container.17 menu:set_gold
# 既にスロットに入っていたアイテムはそのまま
    execute if data storage menu:temp Data.Items[{Slot:14b,tag:{potion:1b}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:14b,tag:{potion:1b}}]
    execute if data storage menu:temp Data.Items[{Slot:15b,tag:{potion:1b}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:15b,tag:{potion:1b}}]
    execute if data storage menu:temp Data.Items[{Slot:16b,tag:{potion:1b}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:16b,tag:{potion:1b}}]
    data modify entity @s Items append from storage menu:temp Data.refresh[]
# 完成品のアイテムを配置
    data modify entity @s Items append from storage menu:temp Data.done[]