#> ui:brewing/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# メニュー内でUIに関連するアイテムのみ音が鳴るように
    execute on vehicle run data modify storage ui: BrewingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{brewable:1b}}}}]
    execute on vehicle unless data entity @s Items[{components:{"minecraft:custom_data":{ui:{brewable:1b}}}}] run data modify storage ui: BrewingItems set value []
    execute on vehicle run data modify storage ui: BrewingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"brew"}}}}]
    execute on vehicle run data modify storage ui: BrewingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute store success storage ui: BrewingChanged int 1 run data modify entity @s data.BrewingItems set from storage ui: BrewingItems
    execute unless data storage ui: {BrewingChanged:1} run tag @s remove PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:brewing/page/changed

# リセット
    tag @s remove InitialSound
    data remove storage ui: BrewingItems
    data remove storage ui: BrewingChanged
    data remove storage ui: Items
    data remove storage ui: Changed