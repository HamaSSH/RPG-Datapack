##########
#>
#

# 進化メニューの初期化
    data modify entity @s Items set value [{Count:1b,Slot:9b,id:"minecraft:gray_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"text":""}'}}},{Count:1b,Slot:14b,id:"minecraft:anvil",tag:{menu:{blank:1b,button:"evolve"},display:{Name:'{"text":"進化","bold":true,"italic":false}'}}}]
# 進化素材の表示
    data modify entity @s Items append from storage menu:temp Data.Items[{Slot:10b}].tag.menu.evolve[]
# 既にスロットに入っていたアイテムはそのまま
    data modify entity @s Items append from storage menu:temp Data.refresh[]