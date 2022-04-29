# 武器ページ(100)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 1000
    # 短剣1ページ目(110)へ
        execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{button:"dagger"}}}] run scoreboard players set @s page 1110
    # 刀剣1ページ目(120)へ
        execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{button:"sword"}}}] run scoreboard players set @s page 1120
    # 槍1ページ目(130)へ
        execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{button:"spear"}}}] run scoreboard players set @s page 1130
    # ハンマー1ページ目(140)へ
        execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"hammer"}}}] run scoreboard players set @s page 1140
    # 杖1ページ目(150)へ
        execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{button:"wand"}}}] run scoreboard players set @s page 1150
    # 弓1ページ目(160)へ
        execute unless data storage menu:temp Data.Items[{Slot:15b,tag:{menu:{button:"bow"}}}] run scoreboard players set @s page 1160