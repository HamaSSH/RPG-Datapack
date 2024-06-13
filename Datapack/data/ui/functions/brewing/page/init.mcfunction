#> ui:brewing/page/init
# UIの初期化

team join Brewing @s
data modify entity @s Items set value [{Slot:9b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Slot:13b,id:"glass_bottle",tag:{CustomModelData:3003,UI:{ItemType:"Brew"},display:{Name:'{"text":"醸造する","bold":true,"italic":false}',Lore:['{"text":"左スロットに入れたアイテムから","color":"gray","italic":false}','[{"text":"","color":"gray","italic":false},{"text":"カスタムポーション","color":"white","bold":true},{"text":"を生成する。"}]']}}},{Slot:17b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}}]