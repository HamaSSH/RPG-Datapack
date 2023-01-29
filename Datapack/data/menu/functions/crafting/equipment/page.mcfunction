# 装備品ページ(200~299)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 1000
        execute unless data storage menu:temp Data.Items[{Slot:15b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 1000