#> ui:shop/tick
# markerのtick処理

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:shop/page/number

# リセット
    data remove storage ui: Items
    data remove storage ui: Changed