#> item:fishing/loot_table
# 魚釣りの抽選

# 溶岩で燃えないように
    data modify entity @s Invulnerable set value 1b

# 釣ったアイテムのデータ
    data modify storage item: tag set from entity @s Item.tag

# 宝箱が抽選された場合
    execute if data storage item: tag.Chest run data modify entity @s PickupDelay set value 32767s
    execute if data storage item: tag{Chest:"Gold"} run say Gold
    execute if data storage item: tag{Chest:"Weapon"} run say Weapon

# 釣った魚のデータを生成
    execute if data storage item: tag{CustomModelData:1001} at @s run function item:fishing/data/get

# Motion
    data modify entity @s Motion set from storage item: Motion
    execute as @e[type=item,distance=..0] run damage @s 0.0 generic

# 後処理
    execute if data storage item: tag.Chest run kill @s
    data remove storage item: Type