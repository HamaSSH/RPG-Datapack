# 未処理のアイテムを返却
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:11b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run say 未処理 11
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:12b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{combinable:1b}}}] run say 未処理 12
    execute unless data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:13b,tag:{menu:{combinable:1b}}}] if data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{combinable:1b}}}] run say 未処理 13
# ホームページ(0)へ
    scoreboard players set @s page 10