##########
#>
#

# 既にスロットに配置されているアイテムは除外
    execute if data storage menu:temp Data.Items[{Slot:10b,tag:{Menu:{Brewable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:10b,tag:{Menu:{Brewable:1b}}}]
    execute if data storage menu:temp Data.Items[{Slot:11b,tag:{Menu:{Brewable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:11b,tag:{Menu:{Brewable:1b}}}]
    execute if data storage menu:temp Data.Items[{Slot:12b,tag:{Menu:{Brewable:1b}}}] run data modify storage menu:temp Data.refresh append from storage menu:temp Data.Items[{Slot:12b,tag:{Menu:{Brewable:1b}}}]
    data remove storage menu:temp Data.brewing[{Slot:10b,tag:{Menu:{Brewable:1b}}}]
    data remove storage menu:temp Data.brewing[{Slot:11b,tag:{Menu:{Brewable:1b}}}]
    data remove storage menu:temp Data.brewing[{Slot:12b,tag:{Menu:{Brewable:1b}}}]
# 順にスロットに配置(実際はメニュー更新時に配置)
    execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{Menu:{Brewable:1b}}}] run function menu:brewing/put_items/10
    execute unless data storage menu:temp Data.Items[{Slot:11b,tag:{Menu:{Brewable:1b}}}] run function menu:brewing/put_items/11
    execute unless data storage menu:temp Data.Items[{Slot:12b,tag:{Menu:{Brewable:1b}}}] run function menu:brewing/put_items/12
# スロットが一杯であれば返却
    execute if data storage menu:temp Data.brewing[] run data modify storage menu:temp Data.return set from storage menu:temp Data.brewing
    function menu:return_item/_