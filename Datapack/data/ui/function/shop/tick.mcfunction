#> ui:shop/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# メニュー内でUIに関連するアイテムのみ音が鳴るように
    execute on vehicle run data modify storage ui: ShopItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute on vehicle run data modify storage ui: ShopItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"forward"}}}}]
    execute on vehicle run data modify storage ui: ShopItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"backward"}}}}]
    execute on vehicle run data modify storage ui: ShopItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"sell"}}}}]
    execute on vehicle run data modify storage ui: ShopItems append from entity @s Items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute store success storage ui: ShopChanged int 1 run data modify entity @s data.ShopItems set from storage ui: ShopItems
    execute unless data storage ui: {ShopChanged:1} run tag @s remove PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:shop/page/number

# リセット
    tag @s remove InitialSound
    data remove storage ui: ShopItems
    data remove storage ui: ShopChanged
    data remove storage ui: Items
    data remove storage ui: Changed