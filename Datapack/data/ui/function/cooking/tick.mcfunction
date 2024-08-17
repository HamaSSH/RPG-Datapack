#> ui:cooking/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# メニュー内でUIに関連するアイテムのみ音が鳴るように
    execute on vehicle run data modify storage ui: CookingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}]
    execute on vehicle unless data entity @s Items[{components:{"minecraft:custom_data":{ui:{cookable:1b}}}}] run data modify storage ui: CookingItems set value []
    execute on vehicle run data modify storage ui: CookingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"cook"}}}}]
    execute on vehicle run data modify storage ui: CookingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute store success storage ui: CookingChanged int 1 run data modify entity @s data.CookingItems set from storage ui: CookingItems
    execute unless data storage ui: {CookingChanged:1} run tag @s remove PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:cooking/page/changed

# リセット
    tag @s remove InitialSound
    data remove storage ui: CookingItems
    data remove storage ui: CookingChanged
    data remove storage ui: Items
    data remove storage ui: Changed