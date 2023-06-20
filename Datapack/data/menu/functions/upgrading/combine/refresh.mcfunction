##########
#>
#

# 進化メニューの初期化
    data modify entity @s Items set value [{Count:1b,Slot:9b,id:"minecraft:gray_stained_glass_pane",tag:{menu:{blank:1b},display:{Name:'{"text":""}'}}}]
# 既にスロットに入っていたアイテムはそのまま
    data modify entity @s Items append from storage menu:temp Data.refresh[]
# 合成素材の表示
    data modify entity @s Items append from entity @s Items[{Slot:10b}].tag.menu.combine[]