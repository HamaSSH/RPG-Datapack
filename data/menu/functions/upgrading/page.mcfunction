# 進化ページ(1)へ
    execute if data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] unless data storage menu:temp Data.Items[{Slot:12b,tag:{menu:{button:"evolve"}}}] run function menu:upgrading/evolve/move
# 合成ページ(2)へ
    execute if data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] unless data storage menu:temp Data.Items[{Slot:13b,tag:{menu:{button:"combine"}}}] run function menu:upgrading/combine/move