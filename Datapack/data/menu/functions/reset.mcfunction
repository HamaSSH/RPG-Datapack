##########
#>
#

    say reset
    item replace entity @s armor.head with air
# アイテムのデータ → storage
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] if score @s PlayerID = @p PlayerID run data modify storage menu:temp Data.Items set from entity @s data.Items
# 返却されるべきアイテムを返却する
    data modify storage menu:temp Data.return set from storage menu:temp Data.Items
    data remove storage menu:temp Data.return[{tag:{menu:{blank:1b}}}]
    data remove storage menu:temp Data.return[{tag:{menu:{combinable:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# 合成メニューで未処理のアイテムを返却
    execute unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}]
    execute unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}]
    execute unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}]
    execute if data storage menu:temp Data.return[] run function menu:return_item/_
# メニューGUIをkill
    execute positioned ~ ~-2 ~ as @e[type=chest_minecart,tag=Open,distance=..5] if score @s PlayerID = @p PlayerID run function menu:kill
# 検知用のマーカーをkill
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] if score @s PlayerID = @p PlayerID run kill @s
# リセット
    data remove storage menu:temp Data
    scoreboard players reset @s menu_timer
    tag @s remove Menu