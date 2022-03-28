# 売却ページ(1)へ
    execute unless data storage menu:temp Data.Items[{Slot:17b,tag:{menu:{button:"sell"}}}] run function menu:shop/sell/move
# 購入ページ(2~7)へ
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{blank:1b}}}] run scoreboard players set $SlotClicked Temporary 10
    execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{blank:1b}}}] run scoreboard players set $SlotClicked Temporary 11
    execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{blank:1b}}}] run scoreboard players set $SlotClicked Temporary 12
    execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{blank:1b}}}] run scoreboard players set $SlotClicked Temporary 13
    execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{blank:1b}}}] run scoreboard players set $SlotClicked Temporary 14
    execute unless data storage menu:temp Data.Items[{Slot:15b,tag:{menu:{blank:1b}}}] run scoreboard players set $SlotClicked Temporary 15
    execute if score $SlotClicked Temporary matches 10..15 run function menu:shop/buy/move
# リセット
    scoreboard players reset $SlotClicked