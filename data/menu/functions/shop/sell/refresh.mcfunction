# 売却メニューの初期化
    data modify entity @s Items set value [{Slot:8b,id:"minecraft:gold_block",Count:1b,tag:{menu:{blank:1b}}},{Count:1b,Slot:17b,id:"minecraft:barrier",tag:{menu:{blank:1b,button:"sell!"},CustomModelData:6017,display:{Name:'{"text":"売却する","color":"white","bold":true,"italic":false}'}}}]
    item modify entity @s container.8 menu:set_gold
# 既にスロットに入っていたアイテムはそのまま
    data modify entity @s Items append from storage menu:temp Data.return[]
# 売却ボタンのLoreに売却額を代入
    item modify entity @s container.17 menu:shop/set_sell
# 売却不可能なアイテムがあった場合
    execute if data storage menu:temp Data.return[{tag:{menu:{sellable:0b}}}] run item modify entity @s container.17 menu:shop/unsellable