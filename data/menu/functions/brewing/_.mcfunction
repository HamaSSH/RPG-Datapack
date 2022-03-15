# 醸造可能アイテムが入れられたら配置
    data modify storage menu:temp Data.brewing append from storage menu:temp Data.Items[{tag:{menu:{brewable:1b}}}]
    execute if data storage menu:temp Data.brewing[] run function menu:brewing/put_items/_
# 関係ないアイテムが入れられた場合返却
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    data remove storage menu:temp Data.return[{tag:{menu:{brewable:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# メニュー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:brewing/refresh
# ボタンクリック
    clear @p #item:everything{menu:{blank:1b}}
    execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:brewing/refresh
    execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"brew"}}}] run function menu:brewing/brew/check
    execute unless data storage menu:temp Data.Items[{Slot:17b,tag:{menu:{blank:1b}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:brewing/refresh
# メニュー内の操作音
    execute unless score $ButtonClicked Temporary matches 1 run playsound ui.button.click master @p ~ ~ ~ 0.3 2.0
    scoreboard players reset $ButtonClicked
# 二重更新を防ぐためにメニュー管理マーカー更新
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s Items
    data modify entity @s data.Items set from storage menu:temp Data.Items