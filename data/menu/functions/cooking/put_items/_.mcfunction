# 既にスロットに配置されているアイテムは除外
    execute if data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{cookable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:10b}]
    execute if data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{cookable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:11b}]
    execute if data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{cookable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:12b}]
    data remove storage menu:temp Data.cooking[{Slot:10b,tag:{menu:{cookable:1b}}}]
    data remove storage menu:temp Data.cooking[{Slot:11b,tag:{menu:{cookable:1b}}}]
    data remove storage menu:temp Data.cooking[{Slot:12b,tag:{menu:{cookable:1b}}}]
# 順にスロットに配置(実際はメニュー更新時に配置)
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{cookable:1b}}}] run function menu:cooking/put_items/10
    execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{cookable:1b}}}] run function menu:cooking/put_items/11
    execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{cookable:1b}}}] run function menu:cooking/put_items/12
# スロットが一杯であれば返却
    execute if data storage menu:temp Data.cooking[] run data modify storage menu:temp Data.return set from storage menu:temp Data.cooking
    function menu:return_item/_