# 店メニューの初期化
    data modify entity @s Items set value [{Slot:10b,id:"minecraft:barrier",Count:1b,tag:{menu:{blank:1b,button:"assassin"},CustomModelData:6018,display:{Name:'{"text":"【アサシン】に転職","color":"white","italic":false}'}}},{Slot:11b,id:"minecraft:barrier",Count:1b,tag:{menu:{blank:1b,button:"fighter"},CustomModelData:6019,display:{Name:'{"text":"【ファイター】に転職","color":"white","italic":false}'}}},{Slot:12b,id:"minecraft:barrier",Count:1b,tag:{menu:{blank:1b,button:"knight"},CustomModelData:6020,display:{Name:'{"text":"【ナイト】に転職","color":"white","italic":false}'}}},{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{menu:{blank:1b,button:"warrior"},CustomModelData:6021,display:{Name:'{"text":"【ウォーリア】に転職","color":"white","italic":false}'}}},{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{menu:{blank:1b,button:"wizard"},CustomModelData:6022,display:{Name:'{"text":"【ウィザード】に転職","color":"white","italic":false}'}}},{Slot:15b,id:"minecraft:barrier",Count:1b,tag:{menu:{blank:1b,button:"hunter"},CustomModelData:6023,display:{Name:'{"text":"【ハンター】に転職","color":"white","italic":false}'}}},{Slot:17b,id:"minecraft:grass_block",Count:1b,tag:{menu:{blank:1b}}}]
# それぞれのアイコンのLore編集
    item modify entity @s container.10 player:class/assassin
    item modify entity @s container.11 player:class/fighter
    item modify entity @s container.12 player:class/knight
    item modify entity @s container.13 player:class/warrior
    item modify entity @s container.14 player:class/wizard
    item modify entity @s container.15 player:class/hunter
    item modify entity @s container.17 player:class/set_profile