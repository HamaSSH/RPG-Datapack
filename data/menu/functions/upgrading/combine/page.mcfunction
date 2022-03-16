# 合成ページ(2)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] run scoreboard players set @s page 10
    # 「合成」を実行