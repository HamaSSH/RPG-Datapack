##########
#>
#

# 強化メニューの初期化
    data modify entity @s Items set value [{Count:1b,Slot:9b,id:"minecraft:gray_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"text":""}'}}},{Count:1b,Slot:11b,id:"minecraft:gray_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"text":""}'}}},{Count:1b,Slot:12b,id:"minecraft:anvil",tag:{menu:{blank:1b,button:"evolve"},display:{Name:'{"text":"進化","bold":true,"italic":false}'}}},{Count:1b,Slot:13b,id:"minecraft:smithing_table",tag:{menu:{blank:1b,button:"combine"},display:{Name:'{"text":"合成","bold":true,"italic":false}'}}},{Count:1b,Slot:14b,id:"minecraft:gold_block",tag:{menu:{blank:1b}}}]
    item modify entity @s container.14 menu:set_gold
# 既にスロットに入っていたアイテムはそのまま
    data modify entity @s Items append from storage menu:temp Data.refresh[{Slot:10b}]