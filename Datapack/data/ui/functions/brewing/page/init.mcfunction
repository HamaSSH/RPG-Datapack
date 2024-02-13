#> ui:brewing/page/init
# UIの初期化

team join Brewing @s
data modify entity @s Items set value [{Count:1b,Slot:9b,id:"gray_stained_glass_pane",tag:{UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:13b,id:"brewing_stand",tag:{UI:{ItemType:"Brew"},display:{Name:'{"text":"醸造する","bold":true,"italic":false}',Lore:['{"text":"左スロットに入れたアイテムから","color":"gray","italic":false}','[{"text":"","color":"gray","italic":false},{"text":"カスタムポーション","color":"white","bold":true},{"text":"を生成する。"}]']}}},{Count:1b,Slot:17b,id:"gray_stained_glass_pane",tag:{UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}}]