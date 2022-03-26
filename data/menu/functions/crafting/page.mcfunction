# 武器ページ(1)へ
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{button:"weapon"}}}] run function menu:crafting/weapon/move
# 装備品ページ(2)へ
     execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{button:"equipment"}}}] run function menu:crafting/equipment/move
# ツールページ(3)へ
     execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{button:"tool"}}}] run function menu:crafting/tool/move
# その他ページ(4)へ
     execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"others"}}}] run function menu:crafting/others/move