#> item:fishing/loot_table
# 魚釣りの抽選

# 溶岩で燃えないように
    data modify entity @s Invulnerable set value 1b

# 釣ったアイテムのデータ
    data modify storage item: tag set from entity @s Item.tag

# 宝箱が抽選された場合
    execute if data storage item: tag.Chest run data modify entity @s PickupDelay set value 32767s
    execute if data storage item: tag{Chest:"Gold"} run function item:fishing/chest/_
    execute if data storage item: tag{Chest:"Weapon"} run say Weapon

# 釣った魚のデータを生成
    execute if data storage item: tag{CustomModelData:1015} at @s run function item:fishing/data/1015
    execute if data storage item: tag{CustomModelData:1016} at @s run function item:fishing/data/1016
    execute if data storage item: tag{CustomModelData:1017} at @s run function item:fishing/data/1017
    execute if data storage item: tag{CustomModelData:1018} at @s run function item:fishing/data/1018
    execute if data storage item: tag{CustomModelData:1019} at @s run function item:fishing/data/1019

# Motion
    data modify entity @s Motion set from storage item: Motion
    execute as @e[type=item,distance=..0] run damage @s 0.0 generic

# 後処理
    data remove storage item: Type