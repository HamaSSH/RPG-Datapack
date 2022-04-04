# 進化メニューの初期化
    data modify entity @s Items set value [{Count:1b,Slot:9b,id:"minecraft:gray_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"text":""}'}}},{Count:1b,Slot:14b,id:"minecraft:smithing_table",tag:{menu:{blank:1b,button:"combine"},display:{Name:'{"text":"合成","bold":true,"italic":false}'}}}]
    # data modify entity @s Items set value [{Count:1b,Slot:9b,id:"minecraft:polished_blackstone",tag:{menu:{blank:1b,button:"reset"},display:{Name:'{"text":"分解","bold":true,"italic":false}',Lore:['{"text":"素材の合成を取り消します。","color": "#D8D8D8","italic":false}']}}},{Count:1b,Slot:14b,id:"minecraft:smithing_table",tag:{menu:{blank:1b,button:"combine"},display:{Name:'{"text":"合成","bold":true,"italic":false}'}}}]
# 既にスロットに入っていたアイテムはそのまま
    data modify entity @s Items append from storage menu:temp Data.refresh[]
# 合成素材の表示
    #execute store result score $Rarity Temporary run data get storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}].tag.rarity
    #data modify storage menu:temp Data.rarity set value [{Count:1b,Slot:11b,id:"minecraft:black_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"color":"white","italic":false,"text":"【uE2B1】以上で解放"}'}}},{Count:1b,Slot:12b,id:"minecraft:black_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"color":"white","italic":false,"text":"【uE2B2】以上で解放"}'}}},{Count:1b,Slot:13b,id:"minecraft:black_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"color":"white","italic":false,"text":"【uE2B3】以上で解放"}'}}}]
    #item modify entity @s container.10 menu:upgrading/combine/rarity
    data modify entity @s Items append from entity @s Items[{Slot:10b}].tag.menu.combine[]
# リセット
    scoreboard players reset $Rarity