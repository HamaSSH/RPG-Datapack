#> ui:smithing/upgrade/page/init
# UIの初期化

data modify entity @s Items set value [{Count:1b,Slot:9b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:11b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}},{Count:1b,Slot:15b,id:"glass_bottle",tag:{CustomModelData:3001,UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}}]
data modify entity @s Items append from storage ui: NewItems[{Slot:10b}].tag.UI.Upgrade[]