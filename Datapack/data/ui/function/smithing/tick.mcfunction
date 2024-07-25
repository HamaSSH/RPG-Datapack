#> ui:smithing/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# メニュー内でUIに関連するアイテムのみ音が鳴るように
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute on vehicle unless data entity @s Items[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}] run data modify storage ui: SmithingItems set value []
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{smithable:1b}}}}]
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"brew"}}}}]
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"upgrade"}}}}]
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"combine"}}}}]
    execute on vehicle run data modify storage ui: SmithingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"repair"}}}}]
    execute store success storage ui: SmithingChanged int 1 run data modify entity @s data.SmithingItems set from storage ui: SmithingItems
    execute unless data storage ui: {SmithingChanged:1} run tag @s remove PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:smithing/page/number

# リセット
    tag @s remove InitialSound
    data remove storage ui: SmithingItems
    data remove storage ui: SmithingChanged
    data remove storage ui: Items
    data remove storage ui: Changed