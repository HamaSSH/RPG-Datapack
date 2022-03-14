# 関係ないアイテムが入れられた場合返却
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    execute if data storage menu:temp Data.return[] run say 返却するアイテムあり
# ボタンクリック
    clear @p #item:everything{menu:{blank:1b}}
    execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:brewing/refresh
    execute unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"brew"}}}] run say 醸造する！ボタン
    execute unless data storage menu:temp Data.Items[{Slot:17b,tag:{menu:{blank:1b}}}] positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] positioned ~ ~2 ~ if score @s PlayerID = @p PlayerID run function menu:brewing/refresh
# リセット
    data remove storage menu:temp Data.return