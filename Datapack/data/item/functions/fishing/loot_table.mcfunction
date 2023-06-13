#> item:fishing/loot_table
# 魚釣りの抽選＋釣ったアイテムの初期化

# 溶岩で燃えないように
    data modify entity @s Invulnerable set value 1b

# 宝箱が抽選された場合
    data modify storage item: Type set from entity @s Item.tag.Chest
    execute if data storage item: Type run data modify entity @s PickupDelay set value 32767s
    execute if data storage item: {Type:"Gold"} run say Gold
    execute if data storage item: {Type:"Weapon"} run say Weapon
    execute if data storage item: Type run kill @s

# Motion
    data modify entity @s Motion set from storage item: Motion
    execute as @e[type=item,distance=..0] run damage @s 0.0 generic

# リセット
    data remove storage item: Type