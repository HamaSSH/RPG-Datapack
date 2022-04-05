# 未処理のアイテムを返却
    execute unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}]
    execute unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}]
    execute unless data storage menu:temp Data.Items[{Slot:14b}].tag.previous.tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}]
    function menu:return_item/_
# ホームページ(0)へ
    scoreboard players set @s page 10