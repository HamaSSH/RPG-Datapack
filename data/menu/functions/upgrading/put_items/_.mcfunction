# 既にスロットに配置されているアイテムは除外
    execute if data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:10b}]
    data remove storage menu:temp Data.upgrading[{Slot:10b,tag:{menu:{upgradable:1b}}}]
# 順にスロットに配置(実際はメニュー更新時に配置)
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] run function menu:upgrading/put_items/10
# スロットが一杯であれば返却
    execute if data storage menu:temp Data.upgrading[] run data modify storage menu:temp Data.return set from storage menu:temp Data.upgrading
    function menu:return_item/_