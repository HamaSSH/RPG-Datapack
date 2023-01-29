# 購入額の計算
    data modify storage menu:temp Data.buy set from entity @s data.buy
    execute store result score $BuyPrice Temporary run data get storage menu:temp Data.buy.tag.buy
    execute store result score $Count Temporary run data get storage menu:temp Data.buy.Count
    scoreboard players operation $BuyPrice Temporary *= $Count Temporary
# 購入ページ(1)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:0b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:1b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:2b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:3b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:4b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:5b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:6b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:7b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:8b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:17b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
    # Countの増減
        execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{blank:1b}}}] run scoreboard players set $AddCount Temporary -1
        execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{blank:1b}}}] run scoreboard players set $AddCount Temporary 1
        execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{blank:1b}},Count:4b}] run scoreboard players set $AddCount Temporary 4
        execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{blank:1b}},Count:16b}] run scoreboard players set $AddCount Temporary 16
        execute unless data storage menu:temp Data.Items[{Slot:15b,tag:{menu:{blank:1b}},Count:64b}] run scoreboard players set $AddCount Temporary 64
        execute if score $AddCount Temporary matches -1.. run function menu:shop/multiple/count
    # 「購入」を実行
        execute unless data storage menu:temp Data.Items[{Slot:16b,tag:{menu:{button:"buy!"}}}] run function menu:shop/buy/_
# リセット
    scoreboard players reset $AddCount