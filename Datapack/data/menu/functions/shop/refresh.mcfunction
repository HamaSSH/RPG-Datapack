##########
#>
#

# 店メニューの初期化
    data modify entity @s Items set value [{Slot:0b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:1b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:2b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:3b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:4b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:5b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:6b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:7b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:8b,id:"gold_block",Count:1b,tag:{menu:{blank:1b}}},{Slot:17b,id:"barrier",Count:1b,tag:{menu:{blank:1b,button:"sell"},CustomModelData:6016,display:{Name:'{"text":"売却","color":"white","bold":true,"italic":false}'}}}]
    item modify entity @s container.8 menu:set_gold
# 管理用マーカーに保存されていた商品のデータを持ってくる
    data modify entity @s Items append from storage menu:temp Data.Goods[]