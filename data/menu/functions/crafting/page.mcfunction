# 武器ページ(1)へ
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{button:"weapon"}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/weapon/move
# 装備品ページ(2)へ
     execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{button:"equipment"}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/equipment/move
# ツールページ(3)へ
     execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{button:"tool"}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/tool/move
# その他ページ(4)へ
     execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"others"}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:crafting/others/move