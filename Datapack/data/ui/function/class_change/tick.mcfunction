#> ui:class_change/tick
# markerのtick処理

# playsoundは1度
    execute unless entity @s[tag=InitialSound] run tag @s add PlaysoundOnce

# メニュー内でUIに関連するアイテムのみ音が鳴るように
    execute on vehicle run data modify storage ui: ClassItems append from entity @s Items[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute store success storage ui: ClassChanged int 1 run data modify entity @s data.ClassItems set from storage ui: ClassItems
    execute unless data storage ui: {ClassChanged:1} run tag @s remove PlaysoundOnce

# UIの中身→storage→markerのdata
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    execute store success storage ui: Changed int 1 run data modify entity @s data.Items set from storage ui: Items
    execute if data storage ui: {Changed:1} run function ui:class_change/page/changed

# リセット
    tag @s remove InitialSound
    data remove storage ui: ClassItems
    data remove storage ui: ClassChanged
    data remove storage ui: Items
    data remove storage ui: Changed