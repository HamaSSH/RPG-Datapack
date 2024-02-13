#> ui:brewing/tick
# markerのtick処理

# UIの中身→markerのdata
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from block ~ ~ ~ Items
    execute if data storage ui: {Changed:1} run function ui:brewing/page/changed

# リセット
    data remove storage ui: Changed