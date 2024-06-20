#> ui:brewing/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:brewing/page/changed

# リセット
    tag @s remove InitialSound
    data remove storage ui: Items
    data remove storage ui: Changed