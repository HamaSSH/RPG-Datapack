##########
#>
#

# 進化ページ(1)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] run scoreboard players set @s page 10
    # 「進化」を実行
        execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{button:"evolve"}}}] run function menu:upgrading/evolve/_