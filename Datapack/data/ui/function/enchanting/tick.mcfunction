#> ui:enchanting/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# メニュー内でUIに関連するアイテムのみ音が鳴るように
    execute on vehicle run data modify storage ui: EnchantingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{enchantable:1b}}}}]
    execute on vehicle unless data entity @s Items[{components:{"minecraft:custom_data":{ui:{enchantable:1b}}}}] run data modify storage ui: EnchantingItems set value []
    execute on vehicle run data modify storage ui: EnchantingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{enchant_item:1b}}}}]
    execute on vehicle run data modify storage ui: EnchantingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{enchant_catalyst:1b}}}}]
    execute on vehicle run data modify storage ui: EnchantingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"enchant"}}}}]
    execute on vehicle run data modify storage ui: EnchantingItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute store success storage ui: EnchantingChanged int 1 run data modify entity @s data.EnchantingItems set from storage ui: EnchantingItems
    execute unless data storage ui: {EnchantingChanged:1} run tag @s remove PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:enchanting/page/changed

# リセット
    tag @s remove InitialSound
    data remove storage ui: EnchantingItems
    data remove storage ui: EnchantingChanged
    data remove storage ui: Items
    data remove storage ui: Changed